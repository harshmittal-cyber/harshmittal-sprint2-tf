terraform {
    backend "s3"{
        bucket="harshmittal-tf-backend"
        key="terraform.tfstate"
        region="ap-south-1"
        dynamodb_table = "harshmittal-training"
    }
}