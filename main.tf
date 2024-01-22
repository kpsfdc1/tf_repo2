provider "aws" {
	region = "us-east-1"
}

terraform {
	backend "s3" {
		bucket = "tf-cis-bucket"
		key =  "terraform.tfstate"
		region = "us-east-1"
	}
}

resource "aws_instance" "tf_test_inst" {
	ami = "ami-06aa3f7caf3a30282"
	instance_type = "t2.micro"
}
