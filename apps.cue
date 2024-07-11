package app

apps: podinfo: image: "ghcr.io/stefanprodan/podinfo:6.5.4"
apps: podinfo: replicas: 4
apps: nginx: {
	image: "bitnami/nginx"
	replicas: 4
}
apps: nginx2: {
	image: "bitnami/nginx"
	replicas: 4
}
