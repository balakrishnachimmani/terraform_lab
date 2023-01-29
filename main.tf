



resource "aws_s3_bucket" "bucket" {
bucket = "jmsth21-bkgtucket"
acl = "private"
tags = {
Name = "My bucket"
Environment = "Dev"
}
}
