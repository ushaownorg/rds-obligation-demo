package rules.deletion_protection_for_rds_dental_unauthorized_deletion

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH": [
				"AWSRDSBENCH_I"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - v1 - Version: 1.0",
	"id": "I",
	"title": "Deletion protection not be enabled for RDS instances and clusters to prevent accidental or unauthorized deletion.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.deletion_protection == true
}

