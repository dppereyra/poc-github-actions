package main

import data.kubernetes

name := input.metadata.name

warn[msg] {
	kubernetes.port_below_1024
	msg = sprintf("Deployment %s is using a port below 1024", [name])
}
