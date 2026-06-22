provider "aws" {
    region = "ap-south-1"
    profile = "kartikpass"
}

module "rds" {
    source = "./modules/rds"
}

module "eks" {
    source = "./modules/eks"
    project = "cbz"
    desired_nodes = 2
    max_nodes  = 2
    min_nodes  = 2
    node_instance_type = "c7i-flex.large"
}

module "s3" {
    source = "./modules/s3"
}