package rules.b_rds_snapshots_and_backups_shall_be_encrypted_at

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH3": [
				"AWSRDSBENCH3_B"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - v1 - Version: 3.0",
	"id": "B",
	"title": "RDS snapshots and backups shall be encrypted at rest.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.skip_final_snapshot == false
}
