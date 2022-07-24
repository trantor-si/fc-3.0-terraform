prefix = "trantor-si"
cluster_name = "terminus"
retention_in_days = 30
desired_size = 2
max_size = 4
min_size = 2

vpc_cidr_block = "10.0.0.0/16"
rtb_cidr_block = "0.0.0.0/0"

rtb_association_count = 2
node_ec2_type = "t2.micro"
node_ec2_type2 = "t3.micro"
vpc_module_path = "./aws/modules/vpc"
eks_module_path = "./aws/modules/eks"
aws_region = "us-east-1"
aws_provider = ">=3.54.0"
local_provider = ">=2.1.0"
s3_bucket = "myfcbucket"
s3_key = "terraform.tfstate"
