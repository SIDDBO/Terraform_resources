resource "aws_dynamodb_table" "name" {
  name = "var.dynamodb_name"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key         = "var.hash_key_name"
  attribute {
    name = "var.hash_key_name"
    type = "S"
  }

}
