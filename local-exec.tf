resource "aws_instance" "myec2" {
  ami = "ami-0518bb0e75d3619ca"
  instance_type = "t2.micro"
  key_name = "myec2keypair"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}
