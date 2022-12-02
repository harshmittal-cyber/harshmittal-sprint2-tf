output "ec2InstanceOutput"{
    # Used List Comprehension
    value=[for i in var.ec2tagname:i]
    description="EC2 instance created output"
}


output "s3BucketOutput"{
    # Used List Comprehension
    value=[for i in var.s3forloop:i["Name"]]
    description="s3 created output"
}
