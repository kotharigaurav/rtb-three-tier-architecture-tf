output "instace_ids" {
  value = [aws_instance.ec2-1.id, aws_instance.ec2-2.id]
}

output "public_ips" {
  value = [aws_instance.ec2-1.public_ip, aws_instance.ec2-2.public_ip]
}