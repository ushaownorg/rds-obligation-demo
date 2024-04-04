package rules.rds_instances_clusters_by_a_ws_backup_an_backup_solution

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH4400": [
				"AWSRDSBENCH4400_G"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Tech Engg - AWS RDS - Best Practice Vishal Biraris - Version: 4.0",
	"id": "G",
	"title": "RDS instances and clusters shall be covered by a backup and recovery plan using AWS Backup or an equivalent backup solution.",
}

# Please write your OPA rule here

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.backup_retention_period > 0
}
