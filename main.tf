terraform {
    required_version = ">= 0.10.7"
    backend "s3" {}
}

provider "aws" {
    region     = "${var.region}"
}

resource "aws_cloudwatch_log_group" "group" {
    name              = "${var.group_name}"
    retention_in_days = "${var.retention_days}"

    tags {
        Name        = "${var.group_name}"
        Project     = "${var.project}"
        Purpose     = "${var.purpose}"
        Creator     = "${var.creator}"
        Environment = "${var.environment}"
        Freetext    = "${var.freetext}"
    }
}
