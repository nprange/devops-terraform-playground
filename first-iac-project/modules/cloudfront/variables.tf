variable "origin_id" {
  type        = string
  description = "S3 Bucket ID"
}

variable "bucket_domain_name" {
  type        = string
  description = "S3 Bucket domain name"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "CDN creation tags"
}
