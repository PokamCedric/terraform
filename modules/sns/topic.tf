# create an sns topic
resource "aws_sns_topic" "this" {
  name = var.name
}
