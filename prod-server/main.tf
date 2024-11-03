resource "aws_instance" "prod-server" {
  ami           = "ami-00c39f71452c08778" 
  instance_type = "t2.micro"
  key_name = "jenkinskey"
  vpc_security_group_ids= ["sg-0c7aae9017fc5106b"]
  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./jenkinskey.pem")
    host     = self.public_ip
  }
