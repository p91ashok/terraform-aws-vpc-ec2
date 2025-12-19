terraform {
  backend "s3" {
    bucket         = "terraform-state-ashok-dev-002"   # ← your final bucket name
    key            = "vpc-ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks-dev"              # ← your final table name
    encrypt        = true
  }
}
