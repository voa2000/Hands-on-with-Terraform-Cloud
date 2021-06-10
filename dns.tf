# data "aws_route53_zone" "this" {
#   name = var.r53-zone
# }

# resource "aws_route53_record" "this" {
#   zone_id = data.aws_route53_zone.this.zone_id
#   name    = "${var.env}.${var.animal}"
#   type    = "A"
#   records = [aws_instance.dpg-2048.public_ip]
#   ttl     = 30
# }


resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.example.com"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.lb.public_ip]
}
resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}
