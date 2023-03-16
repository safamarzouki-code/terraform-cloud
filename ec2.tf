provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-012cc038cc685a0d7"
    instance_type = "t2.micro"
    key_name = "devops-safa"
    tags = {
        Name = "ec2-safa"
    }
root_block_device {
    delete_on_termination = true
}

}
