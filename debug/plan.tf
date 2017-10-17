terraform {
    required_version = ">= 0.10.7"
    backend "s3" {}
}

module "cloudwatch-log" {
    source = "../"

    region         = "us-west-2"
    group_name     = "/development/debug/docker"
    retention_days = "7"
    project        = "Debug"
    purpose        = "Debug the Terraform module"
    creator        = "kurron@jvmguy.com"
    environment    = "development"
    freetext       = "No notes at this time."
}

output "group_arn" {
    value = "${module.cloudwatch-log.group_arn}"
}
