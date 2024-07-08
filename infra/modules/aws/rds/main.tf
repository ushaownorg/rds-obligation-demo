locals {
  extract_resource_name = lower("${var.common_name_prefix}-${var.environment}")
}


resource "aws_db_subnet_group" "db-subnet-group" {
  name       = "${local.extract_resource_name}-db-subnet-group"
  subnet_ids = [var.subnet-db-a-id, var.subnet-db-b-id]

  tags = merge(
    {
      "Name" = format("%s", "${local.extract_resource_name}-db-subnet-group")
    },
    {
      environment = var.environment
    },
    var.tags,
  )
}

resource "random_password" "password_postgres" {
  length  = 16
  special = false
}

resource "aws_db_instance" "db" {
  identifier              = "${local.extract_resource_name}-db"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  max_allocated_storage   = 40
  engine                  = "postgres"
  username                = "postgres"
  password                = random_password.password_postgres.result
  db_subnet_group_name    = aws_db_subnet_group.db-subnet-group.name
  vpc_security_group_ids  = [var.db-sg-id]
  storage_encrypted       = true
  db_name                 = "postgres"
  auto_minor_version_upgrade = true
  backup_retention_period = 7
  backup_window           = "20:00-21:00"
  maintenance_window      = "Sat:23:00-Sun:03:00"
  monitoring_interval = var.environment == "prod" || var.environment == "production" ? 60 : 0
  performance_insights_enabled = var.environment == "prod" || var.environment == "production" ? true : false
  deletion_protection     = var.environment == "prod" || var.environment == "production" ? true : false
  multi_az = true
  publicly_accessible    = false
  skip_final_snapshot = var.environment == "prod" || var.environment == "production" ? false : true
  key_rotated = true
  audit_log_enabled = true

  tags = merge(
    {
      "Name" = format("%s", "${local.extract_resource_name}-db")
    },
    {
      environment = var.environment
    },
    var.tags,
  )

}