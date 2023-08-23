resource "aws_key_pair" "prodkey" {
  key_name   = "prodkey"
  public_key = file(var.PUB_KEY_PATH)
}
