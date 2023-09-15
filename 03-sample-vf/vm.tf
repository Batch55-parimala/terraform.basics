resource "aws_instance" "web" {
  ami           = "ami-0e81190e94c2fb557"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform- Instance"
  }
}