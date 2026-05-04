module "aws_vpc_with_k3s_apr26" {
  source = "git::https://github.com/aumthakkar/aws-vpc-with-k3s-apr26.git"

  vpc_region = "eu-north-1"
  vpc_cidr   = "10.0.0.0/16"

  name_prefix = "pht-dev"

  public_subnet_count  = 2
  private_subnet_count = 2


  db_storage = 10

  db_engine         = "mysql"
  db_engine_version = "8.0.45"

  db_instance_class = "db.t3.micro"

  dbname        = "rancher"
  db_identifier = "pht-db"

  db_username = "pranav"
  db_password = "t4b!3s2026"

  lb_tg_port     = 8000
  lb_tg_protocol = "HTTP"

  lb_tg_healthy_threshold    = 3
  lb_tg_unhealthy_threshold  = 3
  lb_tg_healthcheck_interval = 30
  lb_tg_healthcheck_timeout  = 5

  aws_lb_listener_port     = 80
  aws_lb_listener_protocol = "HTTP"

  key_name = "mtckey"

  instance_count    = 1
  k3s_instance_type = "t4g.small"

  access_ip            = "5.71.198.252/32"
  instance_volume_size = 10
}