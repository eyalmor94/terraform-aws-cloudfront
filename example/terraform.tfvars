create_cf                = true
alias                    = []
comment                  = "AWS Cloudfront Module"
enable                   = true
enable_ipv6              = true
http_version             = "http1.1"
minimum_protocol_version = "TLSv1.1_2016"
price                    = "PriceClass_100"
region                   = "us-east-1"
restriction_type         = "none"
#iam_certificate_id       = "sslcert"
#ssl_support_method       = "sni-only"
tag_name                 = "AWS Cloudfront Module"
additional_tags = {
  Test1 = "Test1"
}

dynamic_s3_origin_config = [
  {
    domain_name            = "acme-c-uw2-cloudfront.s3.amazonaws.com"
    origin_id              = "acme-c"
    #origin_access_identity = "origin-access-identity/cloudfront/1234"
  }
]

dynamic_default_cache_behavior = [
  {
    allowed_methods        = ["GET", "HEAD", "OPTIONS", "POST", "PUT", "DELETE", "PATCH"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "acme-c"
    compress               = false
    query_string           = true
    cookies_forward        = "all"
    //headers                = ["*"]
    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 0
    max_ttl                = 0
  }
]