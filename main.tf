module "root_create_s3_backend" {
   source = "./modules/S3_backend"
   bucket_name = "var.root_bucket_name"
   sse_algorithm = "var.root_sse-sse_algorithm"
}


module "root_create_dynamodb_backend" {
   source = "./modules/dynamodb"
   dynamodb_name = "var.root_dynamodb_name"
   hash_key_name = "var.root_hash_key_name"

}


# module "root_instance_create" {
# source = "./modules/Instance_create"
# instance-type = "var.root_instance-type"
# instance-number = "var.root_instance-number"
# }
