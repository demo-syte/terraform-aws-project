resource "aws_security_group" "vprofile-sg" {

  vpc_id      = module.vpc.vpc_id
  name        = "vprofile-bean-elb-sg"
  description = "Security group for bean-elb"


  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }


}

resource "aws_security_group" "vprofile-bastion-sg" {

  name        = "bastion-sg"
  description = "Security Group for bastion host ec2 instances"
  vpc_id      = module.vpc.vpc_id

  ingress {
    cidr_blocks = [var.myip]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

}

resource "aws_security_group" "vprofile-prod-sg" {

  name        = "vprofile-prod-sg"
  description = "Security group for beanstalk instances"
  vpc_id      = module.vpc.vpc_id

  ingress {
    security_groups = [aws_security_group.vprofile-bastion-sg.id]
    from_port       = 22
    protocol        = "tcp"
    to_port         = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}
resource "aws_security_group" "vprofile-backend-sg" {

  name        = "vprofile-backend-sg"
  description = "Security group for RDS,active MQ,elastic cache"
  vpc_id      = module.vpc.vpc_id

  ingress {
    security_groups = [aws_security_group.vprofile-prod-sg.id]
    from_port       = 0
    protocol        = "-1"
    to_port         = 0
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}

resource "aws_security_group_rule" "sec-allow_itself" {

  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "tcp"
  security_group_id        = aws_security_group.vprofile-backend-sg.id
  source_security_group_id = aws_security_group.vprofile-backend-sg.id
}
