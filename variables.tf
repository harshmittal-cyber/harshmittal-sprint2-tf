variable "ec2tagname"{
    type=list(string)
}

variable "s3forloop"{
    type=map(any)
}

variable "amiid"{
    type=string
}

variable "instance_type"{
    type=string
}

variable "owner"{
    type=string
}

variable "purpose"{
    type=string
}