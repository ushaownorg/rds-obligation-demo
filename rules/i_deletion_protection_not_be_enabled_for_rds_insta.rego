package rules.i_deletion_protection_not_be_enabled_for_rds_insta

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHUPDATE": [
				"AWSRDSBENCHUPDATE_I"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 3.0",
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