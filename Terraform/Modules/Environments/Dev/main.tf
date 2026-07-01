module "my_ec2_module" {
    source = "../../Module"

    instance_type = "t2.micro"
    environment   = "DEV"
  
}