package app

objects: [for t in output for v in t {v}]

output: deployments: [Name=string]: {
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: name: Name
	spec: {
		selector: matchLabels: app: Name
		template: {
			metadata: labels: app: Name
			spec: {
				containers: [{
					name:  "podinfo"
					image: "ghcr.io/stefanprodan/podinfo:6.5.4"
				}]
			}
		}
	}
}

output: deployments: podinfo: {}
output: deployments: podinfo2: {}
