package rules.a_rds_instances_and_clusters_shall_be_encrypted_at

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHDELETE": [
				"AWSRDSBENCHDELETE_A"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 1.0",
	"id": "A",
	"title": "RDS instances and clusters shall be encrypted at rest using JPMC standard encryption algorithms.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
  input.storage_encrypted == true
}