output "group_arn" {
    value = "${aws_cloudwatch_log_group.group.arn}"
    description = "ARN of the created CloudWatch Log Group"
}
