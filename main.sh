export PYTHONPATH="${PYTHONPATH}:/Users/germanpolicarpo/Library/Python/3.9/lib/python/site-packages"


ansible-playbook ./ansible/playbooks/main.yml -e '{
  "VULTR_ACCESS_KEY": "WZOLWW4A831ZOBMTGC6A",
  "VULTR_SECRET_KEY": "2XCiD8Omwe1uM6b5eeKCoEZFm15wfWFr5U0ZqQ74",
  "USER_SPECIFIC_BUCKET_NAME": "tito",
  "ENDPOINT": "ewr1.vultrobjects.com",
  "access_key": "AKIAVRRPZVJKWI47XO4E",
  "secret_key": "J4dTPj9gwvFKbiLy7S75OQwhmu2qxNdapSxJobcG",
  "generate_s3": true,
  "dynamic_roles": ["provider", "s3"],  # Replace with actual role names
  "buckets": [
    {
      "name": "ssssdfsgagdagadgag2estdgcssdafag",
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
      "name": "ssssdfsgagdagadgag2estdgcssdafagksksksksksksksk",
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
  ]
}'
