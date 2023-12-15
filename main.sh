export PYTHONPATH="${PYTHONPATH}:/Users/germanpolicarpo/Library/Python/3.9/lib/python/site-packages"


ansible-playbook ./ansible/playbooks/main.yml -e '{"buckets": [
  {
    "name": "my-bucket-1",
    "acl": "private",
    "block_public_acls": true,
    "block_public_policy": true,
    "ignore_public_acls": true,
    "restrict_public_buckets": true,
    "host_website": false,
    "index_document": "index.html",
    "error_document": "error.html",
    "tags": [
      {"key": "Environment", "value": "Dev"},
      {"key": "Project", "value": "ProjectX"}
    ]
  },
  {
    "name": "my-bucket-2",
    "acl": "public-read",
    "block_public_acls": false,
    "block_public_policy": false,
    "ignore_public_acls": false,
    "restrict_public_buckets": false,
    "host_website": true,
    "index_document": "index.html",
    "error_document": "error.html",
    "tags": [
      {"key": "Environment", "value": "Prod"},
      {"key": "Project", "value": "ProjectY"}
    ]
  }
]}'

