resource "aws_instance" "jenkins_server" {
    ami = var.ami
    instance_type = var.instance
    key_name = "jenkins-server"
    subnet_id                   = aws_subnet.myapp-subnet-1.id
    vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
    availability_zone           = var.avail_zone
    associate_public_ip_address = true
    user_data                   = file("jenkins-server-script.sh")
    tags = {
        Name = "${var.env_prefix}-server"
     }
}
