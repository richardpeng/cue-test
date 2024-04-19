package app

import "encoding/yaml"

command: dump: {
	task: print: {
		kind: "print"
		text: yaml.MarshalStream(config.kubernetes.objects)
	}
}
