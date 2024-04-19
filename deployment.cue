package app

config: objects: [podinfo]

podinfo: {
    apiVersion: "apps/v1"
    kind:       "Deployment"
    metadata: {
        name:      "podinfo"
        labels: {
            name:                         "podinfo"
            service:                      "podinfo"
            "app.kubernetes.io/name":     "podinfo"
        }
    }
    spec: {
        selector: {
            matchLabels: {
                name:        "podinfo"
                service:     "podinfo"
                environment: "test"
                component:   "backend"
                tier:        "1"
            }
        }
        template: {
            metadata: {
                labels: {
                    name:        "podinfo"
                    service:     "podinfo"
                    environment: "test"
                    component:   "backend"
                    tier:        "1"
                }
            }
            spec: {
                containers: [{
                    name:  "podinfo"
                    image: "ghcr.io/stefanprodan/podinfo:6.5.4"
                }]
            }
        }
    }
}
