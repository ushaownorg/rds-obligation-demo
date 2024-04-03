package rules.b_rds_snapshots_and_backups_shall_be_encrypted_at

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHORIGINAL": [
				"AWSRDSBENCHORIGINAL_B"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 1.0",
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