output "my_ec2_ip" {
    description = "IP address of the ec2 instance"
    value = aws_instance.myec2.public_ip
  
}

output "my_ec2_id" {
    description = "ID of the ec2 instance"
    value = aws_instance.myec2.id
  
}

output "public_dns" {
    description = "Public DNS of the ec2 instance"
    value = aws_instance.myec2.public_dns
  
}