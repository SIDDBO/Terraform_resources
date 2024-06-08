output "instance-details" {
    value = aws_instance.test[0].public_ip
}