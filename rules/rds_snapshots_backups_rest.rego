package rules.rds_snapshots_backups_rest

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH": [
				"AWSRDSBENCH_B"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Tech Engg - AWS RDS - Best Practice Vishal Biraris - Version: 4.0",
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