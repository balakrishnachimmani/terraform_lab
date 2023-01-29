

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}





resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket12345jkgtd554555"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



