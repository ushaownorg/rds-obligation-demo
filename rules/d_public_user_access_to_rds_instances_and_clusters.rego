package rules.d_public_user_access_to_rds_instances_and_clusters

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH3": [
				"AWSRDSBENCH3_D"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - v1 - Version: 3.0",
	"id": "D",
	"title": "Public user access to RDS instances and clusters shall be not restricted unless explicitly required for specific use cases.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.publicly_accessible == false
}