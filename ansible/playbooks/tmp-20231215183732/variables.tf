





variable "buckets" {
  description = "List of buckets to create"
  type = list(object({
    name = string
    acl = string
    block_public_acls = bool
    block_public_policy = bool
    ignore_public_acls = bool
    restrict_public_buckets = bool
    host_website = bool
    index_document = string
    error_document = string
    tags = list(object({
      key = string
      value = string
    }))
  }))
  default = [
    
    {
      name = "my-bucket-1"
      acl = "private"
      block_public_acls = True
      block_public_policy = True
      ignore_public_acls = True
      restrict_public_buckets = True
      host_website = False
      index_document = "index.html"
      error_document = "error.html"
      tags = [
        
        {
          key = "Environment"
          value = "Dev"
        },
        
        {
          key = "Project"
          value = "ProjectX"
        },
        
      ]
    },
    
    {
      name = "my-bucket-2"
      acl = "public-read"
      block_public_acls = False
      block_public_policy = False
      ignore_public_acls = False
      restrict_public_buckets = False
      host_website = True
      index_document = "index.html"
      error_document = "error.html"
      tags = [
        
        {
          key = "Environment"
          value = "Prod"
        },
        
        {
          key = "Project"
          value = "ProjectY"
        },
        
      ]
    },
    
  ]
}



