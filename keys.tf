resource "aws_key_pair" "sree-key" {
  key_name   = "sree-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
