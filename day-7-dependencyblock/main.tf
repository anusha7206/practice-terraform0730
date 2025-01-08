resource "aws_instance" "dependent" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "kpr"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "retteyeuueujueje" 
    depends_on = [ aws_instance.dependent ]
}