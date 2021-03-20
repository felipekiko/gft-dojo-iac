resource "aws_route53_record" "site" {
  zone_id = local.route53_zone_id
  name    = local.app_url
  type    = "A"

  alias {
    name                   = aws_s3_bucket.bucket.website_domain
    zone_id                = aws_s3_bucket.bucket.hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "api" {
  zone_id = local.route53_zone_id
  name    = aws_api_gateway_domain_name.domain_name.domain_name
  type    = "A"

  alias {
    name                   = aws_api_gateway_domain_name.domain_name.cloudfront_domain_name
    zone_id                = aws_api_gateway_domain_name.domain_name.cloudfront_zone_id
    evaluate_target_health = true
  }
}
