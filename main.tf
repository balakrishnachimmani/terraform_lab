


# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWHV44PQBE2TMV2VP"
  secret_key = "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"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0aa7d40eeae50c9a9"
  instance_type          = "t2.micro"
  key_name               = "user1"
 
  vpc_security_group_ids = ["	sg-02dc6d10c1b47f88c"]
 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
