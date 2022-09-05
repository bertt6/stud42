import { Flag, MeWithFlagsDocument, MeWithFlagsQuery } from '@graphql.d';
import { queryAuthenticatedSSR } from '@lib/apollo';
import { NextMiddleware, NextResponse } from 'next/server';

export const middleware: NextMiddleware = async (req) => {
  const { pathname } = req.nextUrl.clone();

  if (
    pathname.startsWith('/api') ||
    pathname.startsWith('/assets') ||
    pathname.startsWith('/beta') ||
    pathname.startsWith('/_next')
  ) {
    return NextResponse.next();
  }

  const { data } = await queryAuthenticatedSSR<MeWithFlagsQuery>(req, {
    query: MeWithFlagsDocument,
  });

  if (pathname.startsWith('/auth')) {
    if (data) return NextResponse.redirect(new URL('/', req.url));
    else return NextResponse.next();
  }

  if (!data) {
    return NextResponse.redirect(
      new URL(
        '/auth/signin?callbackUrl=' + encodeURIComponent(pathname),
        req.url
      )
    );
  }

  const { flags = [] } = data?.me || {};
  if (flags.includes(Flag.STAFF) || flags.includes(Flag.BETA)) {
    return NextResponse.next();
  }

  return NextResponse.redirect(new URL('/beta', req.url));
};