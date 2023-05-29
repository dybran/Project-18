output "ext-alb-sg" {
  value = aws_security_group.narbyd["ext-alb-sg"].id
}


output "int-alb-sg" {
  value = aws_security_group.narbyd["int-alb-sg"].id
}


output "bastion-sg" {
  value = aws_security_group.narbyd["bastion-sg"].id
}


output "nginx-sg" {
  value = aws_security_group.narbyd["nginx-sg"].id
}


output "web-sg" {
  value = aws_security_group.narbyd["webserver-sg"].id
}


output "datalayer-sg" {
  value = aws_security_group.narbyd["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.narbyd["compute-sg"].id
}