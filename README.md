# oyd-exercise-6-2

## Descripción

Este proyecto utiliza Terraform para configurar un Application Load Balancer (ALB) junto con su respectivo Listener y Target Group. El ALB se implementa frente a una infraestructura de AWS previamente aprovisionada (VPC e instancia EC2) que aloja una API de transcodificación de video de MediaStream, permitiendo así distribuir el tráfico entrante de forma eficiente y preparando el entorno para un futuro escalado horizontal.

## Evidence

A continuación se muestra la evidencia del despliegue exitoso:

**evidence/state-list.txt**
```text
data.aws_instance.api
data.aws_subnets.public
data.aws_vpc.main
aws_lb.main
aws_lb_listener.http
aws_lb_target_group.api
aws_lb_target_group_attachment.api
aws_security_group.alb
```

**evidence/outputs.txt**
```text
alb_arn = "arn:aws:elasticloadbalancing:us-east-1:144986448284:loadbalancer/app/mediastream-alb/4a99ebe177e7d461"
alb_dns_name = "mediastream-alb-635955882.us-east-1.elb.amazonaws.com"
target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:144986448284:targetgroup/mediastream-api-tg/4f8bbbfb8cf543f2"
```
