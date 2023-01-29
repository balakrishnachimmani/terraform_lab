


# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
 
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.micro"
  key_name               = "user1"
 
  vpc_security_group_ids = ["	sg-02dc6d10c1b47f88c"]
 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
