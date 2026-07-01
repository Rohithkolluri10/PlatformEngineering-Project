resource "aws_instance" "myec2" {

    ami           = data.aws_ami.myami.id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.mysecgroup.id]
    key_name = aws_key_pair.mykeypair.key_name
  
}

resource "aws_security_group" "mysecgroup" {
    name        = "mysecgroup"
    description = "Allow SSH inbound traffic"
    vpc_id      = data.aws_vpc.myvpc.id

    tags = {
        Name = "mysecgroup"
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
}

resource "tls_private_key" "mykey" {
    algorithm = "ED25519"
}

resource "aws_key_pair" "mykeypair" {
    key_name   = "mykeypair"
    public_key = tls_private_key.mykey.public_key_openssh
}
resource "local_file" "mykeyfile" {
    content  = tls_private_key.mykey.private_key_pem
    filename = "${path.module}/mykey.pem"
}