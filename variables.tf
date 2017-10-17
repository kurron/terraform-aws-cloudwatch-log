variable "region" {
    type = "string"
    description = "The AWS region to deploy into, e.g. us-east-1"
}

variable "group_name" {
    type = "string"
    description = "What to name the log group, e.g. docker-logs"
}

variable "retention_days" {
    type = "string"
    description = "How many days to save logs for, e.g. 14"
}

variable "project" {
    type = "string"
    description = "Name of the project these resources are being created for, e.g. violet-sloth"
}

variable "purpose" {
    type = "string"
    description = "The reason for creating the group, e.g. Holds Docker logs"
}

variable "creator" {
    type = "string"
    description = "Person creating these resources, e.g. operations@example.com"
}

variable "environment" {
    type = "string"
    description = "Context these resources will be used in, e.g. production"
}

variable "freetext" {
    type = "string"
    description = "Information that does not fit in the other tags, e.g. let the Docker driver specify the stream"
}
