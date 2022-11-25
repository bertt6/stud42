
module "jwtks_service" {
  source = "../../modules/service"

  name       = "jwtks-service"
  appName    = "jwtks-service"
  appVersion = var.appVersion
  namespace  = var.namespace
  image      = "ghcr.io/42atomys/stud42:${var.appVersion}"

  command = ["stud42cli"]
  args    = ["--config", "/config/stud42.yaml", "serve", "jwtks"]

  nodeSelector = {
    nodepool = "small"
  }

  podLabels = {
    # Disable istio sidecar injection for this pod due to the fact this is a 
    # job and we dont implement the /quitquitquit endpoint of envoy actually.
    "sidecar.istio.io/inject" = "false"
  }

  replicas = 1
  autoscaling = {
    enabled     = true
    minReplicas = 1
    maxReplicas = 10
    metrics = {
      cpu = {
        targetAverageUtilization = 75
      }
    }
  }

  prometheus = {
    enabled = false
  }

  podSecurityContext = {
    fsGroup = 1001
  }

  containerSecurityContext = {
    runAsGroup   = 1001
    runAsNonRoot = true
    runAsUser    = 1001
  }

  resources = {
    limits = {
      memory = "60Mi"
    }
    requests = {
      cpu    = "100m"
      memory = "40Mi"
    }
  }

  ports = {
    signing = {
      containerPort = 5000
      istioProtocol = "grpc"
    }

    wellknow = {
      containerPort = 5500
      istioProtocol = "http"
    }
  }

  env = {
    GO_ENV = var.namespace
  }

  envFromSecret = {
    SENTRY_DSN = {
      key  = "JWTKS_SERVICE_DSN"
      name = "sentry-dsns"
    }
    S42_SERVICE_TOKEN = {
      key  = "TOKEN"
      name = "s42-service-token"
    }
  }

  volumeMounts = [
    {
      volumeName = "configuration"
      mountPath  = "/config"
      readOnly   = true
    },
    {
      volumeName = "certs-grpc"
      mountPath  = "/etc/certs/grpc"
      readOnly   = true
    },
    {
      volumeName = "certs-jwk"
      mountPath  = "/etc/certs/jwk"
      readOnly   = true
    }
  ]

  volumesFromConfig = {
    configuration = {
      configMapName = "stud42-config"
    }
  }

  volumesFromSecret = {
    certs-grpc = {
      secretName = "jwtks-service-grpc-internal-tls"
    }
    certs-jwk = {
      # secret defined in the secrets.tf file, not on the app module
      # TODO: move it to the app module (add sealedSecret to the app module)
      secretName = "jwtks-service-certs-jwk"
    }
  }

  certificates = {
    grpc-internal = {
      dnsNames      = ["jwtks-service", "jwtks-service.${var.namespace}.svc.cluster.local"]
      issuerRefKind = "ClusterIssuer"
      issuerRefName = "selfsigned-issuer"
    }
  }

  secrets = var.hasProvidedJWTKSCertificates ? {
    certs-jwk = {
      data = {
        "private.key" = file("${path.root}/../../../certs/private.key")
        "public.pem"  = file("${path.root}/../../../certs/public.pem")
      }
    }
  } : {}
}