terraform {
  backend "s3" {
    bucket         = "date-time-api-terraform-state"
    key            = "test/path/terraform.tfstate" 
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true                      
  }
}