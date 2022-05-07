
module "team1-bastion-testing" {
  source   = "git::git@github.com:makwanji/tf-aws-modules.git"
  dept     = "team1"
  key_name = "terraform-user"
  dns_zone = "rbt.dev"
  vpc_id   = "vpc-f2142695"
  bastion_user_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDgMnk1QnHmCcHMdZ9SSoP4JQnRWp6Isg53v4xtjn3eoETa2VinkOPjyJosfHSXXr+ITgXMw0PnlMdRWFzp+KJNGkjs/gdsfn61geS1xV8wyS9/Q/KfP3XaWw5C9uFfFiu4ZqCE4KFHtnrmcUSZfOguvwQ7iWiKeMIl9yD69Y2tgpKmI0T32B0dz2sCRvF1yhDFOJWCimA4YanrgArTXBJxhZLIpefCzOQvWAPSu2E5of6oHMF4qTEVeafGB5YJ0LcavWyw4JbKc/Z4w5P5KxVZFaZYOkAtITTEKvqSW759LcQAXdSQjDgg6RYbR/vj3chmMk5bPuPB9kIILwN9qJkSqXIEp0QP1djT1aOBoUXY5ivK7sE4QgohkjPQOm+k/DEESp0jUKTDEeTKsV5EtlRp4upSfBD//45fTIJ8mI1VWVF8DaTS/mPlnNLTBgS4Zr7qdwSm2F/uwfviRFGgmuZ2IM+ENG5dUDUh6fEQpuZCE67+13TiQe5UQwD7w8cFpbE= jig@Jigs-MBP"
  ]
  public_key  = file("${path.module}/bastion-keys/team1-bastion-testing.pub")
  private_key = file("${path.module}/bastion-keys/team1-bastion-testing")
  providers = {
    aws = aws.jig-devops-pro
  }
  billing_dept        = "team1"
  billing_environment = "staging"
  billing_owner       = "team1"
  billing_product     = "team1"
}