package kubernetes

is_deployment {
    input.kind = "Deployment"
}

is_missing_namespace {
    not input.metadata.namespace
}

port_below_1024 {
    input.spec.template.spec.containers[_].ports[_].containerPort < 1024
}
