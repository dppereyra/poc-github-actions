package main

import data.kubernetes

name := input.metadata.name

violation[{"msg": msg, "details": {}}] {
	kubernetes.is_missing_namespace
	msg := sprintf("Deployment %s is missing namespace value", [name])
}
