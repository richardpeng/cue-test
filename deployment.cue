package app

objects: [for t in output for v in t {v}]

#App: {
	image: string
	replicas: int & <5
}

apps: [Name=string]: #App

output: deployments: [for Name, x in apps {
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
					image: x.image
				}]
			}
		}
	}
}]
