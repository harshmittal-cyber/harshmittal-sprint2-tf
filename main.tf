resource "aws_instance" "awsInstance" {
  count=length(var.ec2tagname)
  ami = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
   Name = var.ec2tagname[count.index],
   Owner = "HarshMittal-cloudeq",
   Purpose = "Aws-instance from terraform sprint 2 assignment"
  }
}


resource "aws_s3_bucket" "bucketInstance"{
    for_each=var.s3forloop
    bucket=each.value["Name"]
    tags={
        Name=each.value["Name"]
        Owner=each.value["Owner"]
        Purpose=each.value["Purpose"]
    }
}