resource "aws_dynamodb_table" "dynamodb-table" {
  name           = local.app_name
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
