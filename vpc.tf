module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "<vpc-name>"
  cidr = "172.21.0.0/16"

  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["172.21.3.0/24", "172.21.4.0/24"]
  public_subnets  = ["172.21.1.0/24", "172.21.2.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "<Dev/prod>"
    Message     = "Hi"
  }
}
