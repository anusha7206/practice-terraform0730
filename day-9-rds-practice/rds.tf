resource "aws_db_instance" "test" {
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"  # You can change this to any supported RDS engine
  engine_version    = "8.0"  # Specify the MySQL version (or other DB version)
  instance_class    = "db.t3.micro"
  db_name           = "mydatabase"
  username          = "admin"
  password          = "securepassword"
  parameter_group_name = "default.mysql8.0"  # Adjust for your DB engine
  multi_az          = false
  publicly_accessible = true

  tags = {
    Name = "MyRDSInstance"
  }
}
