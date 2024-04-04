package rules.private_user_access_rds_ins_uired_for_specific_use_cases

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH4400": [
				"AWSRDSBENCH4400_D"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Tech Engg - AWS RDS - Best Practice Vishal Biraris - Version: 4.0",
	"id": "D",
	"title": "Private user access to RDS instances and clusters shall be restricted unless explicitly required for specific use cases.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.publicly_accessible == true
}

