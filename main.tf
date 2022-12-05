resource "aws_instance" "awsInstance" {
  count=length(var.ec2tagname)
  ami = var.amiid
  instance_type = var.instance_type

  tags = {
   Name = var.ec2tagname[count.index],
   Owner = var.owner,
   Purpose = var.purpose
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