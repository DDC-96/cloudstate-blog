resource "aws_instance" "cloudstate-bastion" {
  ami                         = lookup(var.AMIS, var.AWS_REGION)
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.prodkey.key_name
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  count                       = var.instance_count
  vpc_security_group_ids      = [aws_security_group.cloudstate-bastion-sg.id]

  tags = {
    Name    = "cloudstate-bastion"
    PROJECT = "cloudstate-app"
  }

  provisioner "file" {
    content     = templatefile("dbscript/deploy.tmpl", { rds-endpoint = aws_db_instance.cloudstate-rds.address, dbuser = var.dbuser, dbpass = var.dbpass })
    destination = "/tmp/deploy.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/deploy.sh",
      "sudo /tmp/deploy.sh"
    ]
  }

  connection {
    type        = "ssh"
    user        = var.USERNAME
    private_key = file(var.PRIV_KEY_PATH)
    host        = self.public_ip
  }
  depends_on = [aws_db_instance.cloudstate-rds]
}