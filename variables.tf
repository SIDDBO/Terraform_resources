variable "root_bucket_name" {
   type = string
   default = "new-bucket-siddbo71"
}

variable "root_sse-sse_algorithm" {
    type = string
    default = "AES256"
}

variable "root_dynamodb_name" {
  type = string
  default = "backend_locking"
}

variable "root_hash_key_name" {
  type = string
  default = "LockID"
}



# variable "root_instance-type"{
#     type = string
#     default = "t2-micro"

# }

# variable "root_instance-number"{
#     type = number
#     default = 2
# }