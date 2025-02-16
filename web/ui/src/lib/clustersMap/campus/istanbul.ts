import { Campus } from '../campus';
import { Cluster } from '../cluster';
import { CampusNames, ICampus, ICluster } from '../types';

export class Istanbul extends Campus implements ICampus {
  emoji = (): string => '🇹🇷';

  name = (): CampusNames => 'istanbul';

  extractorRegexp = (): RegExp =>
    /(?<clusterWithLetter>e(?<cluster>\d+))(?<rowWithLetter>r(?<row>\d+))(?<workspaceWithLetter>p(?<workspace>\d+))/i;

  clusters(): ICluster[] {
    return [
      new Cluster({
        identifier: 'k1',
        name: 'Front End',
        totalWorkspaces: 44,
        map: [
          [
            'T:r1',
            'W:k1m01s01',
            'W:k1m01s02',
            'W:k1m01s03',
            'W:k1m01s04',
            'W:k1m01s05',
            'W:k1m01s06',
            'W:k1m01s07',
            'W:k1m01s08',
            'W:k1m01s09',
            'W:k1m01s10',
            'W:k1m01s11',
            'T:r1',
          ],
          [
            'T:r2',
            'W:k1m02s02',
            'W:k1m02s02',
            'W:k1m02s03',
            'W:k1m02s04',
            'W:k1m02s05',
            'W:k1m02s06',
            'W:k1m02s07',
            'W:k1m02s08',
            'W:k1m02s09',
            'W:k1m02s10',
            'W:k1m02s11',
            'T:r2',
          ],
          [
            'T:r3',
            'W:k1m03s03',
            'W:k1m03s02',
            'W:k1m03s03',
            'W:k1m03s04',
            'W:k1m03s05',
            'W:k1m03s06',
            'W:k1m03s07',
            'W:k1m03s08',
            'W:k1m03s09',
            'W:k1m03s10',
            'W:k1m03s11',
            'T:r3',
          ],
          [
            'T:r4',
            'W:k1m04s04',
            'W:k1m04s02',
            'W:k1m04s03',
            'W:k1m04s04',
            'W:k1m04s05',
            'W:k1m04s06',
            'W:k1m04s07',
            'W:k1m04s08',
            'W:k1m04s09',
            'W:k1m04s10',
            'W:k1m04s11',
            'T:r4',
          ],
        ],
      }),
      new Cluster({
        identifier: 'k1',
        name: 'Full Stack',
        totalWorkspaces: 241,
        map: [
          [
            'T:r28',
            'W:k1m28s11',
            'W:k1m28s10',
            'W:k1m28s9',
            'W:k1m28s8',
            'W:k1m28s7',
            'W:k1m28s6',
            'W:k1m28s5',
            'W:k1m28s4',
            'W:k1m28s3',
            'W:k1m28s2',
            'W:k1m28s1',
            'T:r28',
          ],
          [
            'T:r27',
            'W:k1m27s11',
            'W:k1m27s10',
            'W:k1m27s9',
            'W:k1m27s8',
            'W:k1m27s7',
            'W:k1m27s6',
            'W:k1m27s5',
            'W:k1m27s4',
            'W:k1m27s3',
            'W:k1m27s2',
            'W:k1m27s1',
            'T:r27',
          ],
          [
            'T:r26',
            null,
            'W:k1m26s10',
            'W:k1m26s9',
            'W:k1m26s8',
            'W:k1m26s7',
            'W:k1m26s6',
            'W:k1m26s5',
            'W:k1m26s4',
            'W:k1m26s3',
            'W:k1m26s2',
            'W:k1m26s1',
            'T:r26',
          ],
          [
            'T:r25',
            null,
            'W:k1m25s10',
            'W:k1m25s9',
            'W:k1m25s8',
            'W:k1m25s7',
            'W:k1m25s6',
            'W:k1m25s5',
            'W:k1m25s4',
            'W:k1m25s3',
            'W:k1m25s2',
            'W:k1m25s1',
            'T:r25',
          ],
          [
            'T:r24',
            'W:k1m24s11',
            'W:k1m24s10',
            'W:k1m24s9',
            'W:k1m24s8',
            'W:k1m24s7',
            'W:k1m24s6',
            'W:k1m24s5',
            'W:k1m24s4',
            'W:k1m24s3',
            'W:k1m24s2',
            'W:k1m24s1',
            'T:r24',
          ],
          [
            'T:r23',
            'W:k1m23s11',
            'W:k1m23s10',
            'W:k1m23s9',
            'W:k1m23s8',
            'W:k1m23s7',
            'W:k1m23s6',
            'W:k1m23s5',
            'W:k1m23s4',
            'W:k1m23s3',
            'W:k1m23s2',
            'W:k1m23s1',
            'T:r23',
          ],
          [
            'T:r22',
            'W:k1m22s11',
            'W:k1m22s10',
            'W:k1m22s9',
            'W:k1m22s8',
            'W:k1m22s7',
            'W:k1m22s6',
            'W:k1m22s5',
            'W:k1m22s4',
            'W:k1m22s3',
            'W:k1m22s2',
            'W:k1m22s1',
            'T:r22',
          ],
          [
            'T:r21',
            null,
            null,
            'W:k1m21s9',
            'W:k1m21s8',
            'W:k1m21s7',
            'W:k1m21s6',
            'W:k1m21s5',
            'W:k1m21s4',
            'W:k1m21s3',
            'W:k1m21s2',
            'W:k1m21s1',
            'T:r21',
          ],
          [
            'T:r20',
            null,
            'W:k1m20s10',
            'W:k1m20s9',
            'W:k1m20s8',
            'W:k1m20s7',
            'W:k1m20s6',
            'W:k1m20s5',
            'W:k1m20s4',
            'W:k1m20s3',
            'W:k1m20s2',
            'W:k1m20s1',
            'T:r20',
          ],
          [
            'T:r19',
            null,
            'W:k1m19s10',
            'W:k1m19s9',
            'W:k1m19s8',
            'W:k1m19s7',
            'W:k1m19s6',
            'W:k1m19s5',
            'W:k1m19s4',
            'W:k1m19s3',
            'W:k1m19s2',
            'W:k1m19s1',
            'T:r19',
          ],
          [
            'T:r18',
            null,
            'W:k1m18s10',
            'W:k1m18s9',
            'W:k1m18s8',
            'W:k1m18s7',
            'W:k1m18s6',
            'W:k1m18s5',
            'W:k1m18s4',
            'W:k1m18s3',
            'W:k1m18s2',
            'W:k1m18s1',
            'T:r18',
          ],
          [
            'T:r17',
            null,
            null,
            'W:k1m17s9',
            'W:k1m17s8',
            'W:k1m17s7',
            'W:k1m17s6',
            'W:k1m17s5',
            'W:k1m17s4',
            'W:k1m17s3',
            'W:k1m17s2',
            'W:k1m17s1',
            'T:r17',
          ],
          [
            'T:r16',
            null,
            'W:k1m16s10',
            'W:k1m16s9',
            'W:k1m16s8',
            'W:k1m16s7',
            'W:k1m16s6',
            'W:k1m16s5',
            'W:k1m16s4',
            'W:k1m16s3',
            'W:k1m16s2',
            'W:k1m16s1',
            'T:r16',
          ],
          [
            'T:r15',
            null,
            'W:k1m15s10',
            'W:k1m15s9',
            'W:k1m15s8',
            'W:k1m15s7',
            'W:k1m15s6',
            'W:k1m15s5',
            'W:k1m15s4',
            'W:k1m15s3',
            'W:k1m15s2',
            'W:k1m15s1',
            'T:r15',
          ],
          [
            'T:r14',
            null,
            'W:k1m14s10',
            'W:k1m14s9',
            'W:k1m14s8',
            'W:k1m14s7',
            'W:k1m14s6',
            'W:k1m14s5',
            'W:k1m14s4',
            'W:k1m14s3',
            'W:k1m14s2',
            'W:k1m14s1',
            'T:r14',
          ],
          [
            'T:r13',
            null,
            null,
            'W:k1m13s9',
            'W:k1m13s8',
            'W:k1m13s7',
            'W:k1m13s6',
            'W:k1m13s5',
            'W:k1m13s4',
            'W:k1m13s3',
            'W:k1m13s2',
            'W:k1m13s1',
            'T:r13',
          ],
          [
            'T:r12',
            null,
            null,
            null,
            null,
            'W:k1m12s7',
            'W:k1m12s6',
            'W:k1m12s5',
            'W:k1m12s4',
            'W:k1m12s3',
            'W:k1m12s2',
            'W:k1m12s1',
            'T:r12',
          ],
          [
            'T:r11',
            null,
            null,
            null,
            null,
            'W:k1m11s7',
            'W:k1m11s6',
            'W:k1m11s5',
            'W:k1m11s4',
            'W:k1m11s3',
            'W:k1m11s2',
            'W:k1m11s1',
            'T:r11',
          ],
          [
            'T:r10',
            'W:k1m10s11',
            'W:k1m10s10',
            'W:k1m10s9',
            'W:k1m10s8',
            'W:k1m10s7',
            'W:k1m10s6',
            'W:k1m10s5',
            'W:k1m10s4',
            'W:k1m10s3',
            'W:k1m10s2',
            'W:k1m10s1',
            'T:r10',
          ],
          [
            'T:r9',
            'W:k1m09s11',
            'W:k1m09s10',
            'W:k1m09s9',
            'W:k1m09s8',
            'W:k1m09s7',
            'W:k1m09s6',
            'W:k1m09s5',
            'W:k1m09s4',
            'W:k1m09s3',
            'W:k1m09s2',
            'W:k1m09s1',
            'T:r9',
          ],
          [
            'T:r8',
            null,
            'W:k1m08s10',
            'W:k1m08s9',
            'W:k1m08s8',
            'W:k1m08s7',
            'W:k1m08s6',
            'W:k1m08s5',
            'W:k1m08s4',
            'W:k1m08s3',
            'W:k1m08s2',
            'W:k1m08s1',
            'T:r8',
          ],
          [
            'T:r7',
            'W:k1m07s11',
            'W:k1m07s10',
            'W:k1m07s9',
            'W:k1m07s8',
            'W:k1m07s7',
            'W:k1m07s6',
            'W:k1m07s5',
            'W:k1m07s4',
            'W:k1m07s3',
            'W:k1m07s2',
            'W:k1m07s1',
            'T:r7',
          ],
          [
            'T:r6',
            'W:k1m06s11',
            'W:k1m06s10',
            'W:k1m06s9',
            'W:k1m06s8',
            'W:k1m06s7',
            'W:k1m06s6',
            'W:k1m06s5',
            'W:k1m06s4',
            'W:k1m06s3',
            'W:k1m06s2',
            'W:k1m06s1',
            'T:r6',
          ],
          [
            'T:r5',
            'W:k1m05s11',
            'W:k1m05s10',
            'W:k1m05s9',
            'W:k1m05s8',
            'W:k1m05s7',
            'W:k1m05s6',
            'W:k1m05s5',
            'W:k1m05s4',
            'W:k1m05s3',
            'W:k1m05s2',
            'W:k1m05s1',
            'T:r5',
          ],
        ],
      }),
      new Cluster({
        identifier: 'k1',
        name: 'Back End',
        totalWorkspaces: 115,
        map: [
          [
            'T:r29',
            'W:k1m29s01',
            'W:k1m29s02',
            'W:k1m29s03',
            'W:k1m29s02',
            'W:k1m29s05',
            'W:k1m29s06',
            null,
            null,
            null,
            null,
            null,
            'T:r29',
          ],
          [
            'T:r30',
            'W:k1m30s01',
            'W:k1m30s02',
            'W:k1m30s03',
            'W:k1m30s02',
            'W:k1m30s05',
            'W:k1m30s06',
            'W:k1m30s07',
            'W:k1m30s08',
            'W:k1m30s09',
            'W:k1m30s10',
            'W:k1m30s11',
            'T:r30',
          ],
          [
            'T:r31',
            'W:k1m31s01',
            'W:k1m31s02',
            'W:k1m31s03',
            'W:k1m31s02',
            'W:k1m31s05',
            'W:k1m31s06',
            'W:k1m31s07',
            'W:k1m31s08',
            'W:k1m31s09',
            null,
            null,
            'T:r31',
          ],
          [
            'T:r32',
            'W:k1m32s01',
            'W:k1m32s02',
            'W:k1m32s03',
            'W:k1m32s02',
            'W:k1m32s05',
            'W:k1m32s06',
            'W:k1m32s07',
            'W:k1m32s08',
            'W:k1m32s09',
            'W:k1m32s10',
            'W:k1m32s11',
            'T:r32',
          ],
          [
            'T:r33',
            'W:k1m33s01',
            'W:k1m33s02',
            'W:k1m33s03',
            'W:k1m33s02',
            'W:k1m33s05',
            'W:k1m33s06',
            'W:k1m33s07',
            'W:k1m33s08',
            'W:k1m33s09',
            'W:k1m33s10',
            'W:k1m33s11',
            'T:r33',
          ],
          [
            'T:r34',
            'W:k1m34s01',
            'W:k1m34s02',
            'W:k1m34s03',
            'W:k1m34s02',
            'W:k1m34s05',
            'W:k1m34s06',
            'W:k1m34s07',
            'W:k1m34s08',
            'W:k1m34s09',
            'W:k1m34s10',
            'W:k1m34s11',
            'T:r34',
          ],
          [
            'T:r35',
            'W:k1m35s01',
            'W:k1m35s02',
            'W:k1m35s03',
            'W:k1m35s02',
            'W:k1m35s05',
            'W:k1m35s06',
            'W:k1m35s07',
            'W:k1m35s08',
            'W:k1m35s09',
            'W:k1m35s10',
            'W:k1m35s11',
            'T:r35',
          ],
          [
            'T:r36',
            'W:k1m36s01',
            'W:k1m36s02',
            'W:k1m36s03',
            'W:k1m36s02',
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            'T:r36',
          ],
          [
            'T:r37',
            'W:k1m37s01',
            'W:k1m37s02',
            'W:k1m37s03',
            'W:k1m37s02',
            'W:k1m37s05',
            'W:k1m37s06',
            null,
            null,
            null,
            null,
            null,
            'T:r37',
          ],
          [
            'T:r38',
            'W:k1m38s01',
            'W:k1m38s02',
            'W:k1m38s03',
            'W:k1m38s02',
            'W:k1m38s05',
            'W:k1m38s06',
            null,
            null,
            null,
            null,
            null,
            'T:r38',
          ],
          [
            'T:r39',
            'W:k1m39s01',
            'W:k1m39s02',
            'W:k1m39s03',
            'W:k1m39s02',
            'W:k1m39s05',
            'W:k1m39s06',
            null,
            null,
            null,
            null,
            null,
            'T:r39',
          ],
          [
            'T:r40',
            'W:k1m40s01',
            'W:k1m40s02',
            'W:k1m40s03',
            'W:k1m40s02',
            'W:k1m40s05',
            null,
            null,
            null,
            null,
            null,
            null,
            'T:r40',
          ],
          [
            'T:r41',
            'W:k1m41s01',
            'W:k1m41s02',
            'W:k1m41s03',
            'W:k1m41s02',
            'W:k1m41s05',
            'W:k1m41s06',
            null,
            null,
            null,
            null,
            null,
            'T:r41',
          ],
          [
            'T:r42',
            'W:k1m42s01',
            'W:k1m42s02',
            'W:k1m42s03',
            'W:k1m42s02',
            'W:k1m42s05',
            'W:k1m42s06',
            null,
            null,
            null,
            null,
            null,
            'T:r42',
          ],
          [
            'T:r43',
            'W:k1m43s01',
            'W:k1m43s02',
            'W:k1m43s03',
            'W:k1m43s02',
            'W:k1m43s05',
            'W:k1m43s06',
            null,
            null,
            null,
            null,
            null,
            'T:r43',
          ],
        ],
      }),
    ];
  }
}
