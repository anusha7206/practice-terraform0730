resource "aws_lambda_function" "name" {
  function_name = "test"
  runtime       = "python3.9"
  role          = "arn:aws:iam::445567110374:role/service-role/test-role-w8h44wzb"
  handler       = "lambda_function.lambda_handler"
  s3_bucket = aws_s3_bucket.lambda_bucket.bucket
  s3_key        = aws_s3_object.lambda_code.key
}