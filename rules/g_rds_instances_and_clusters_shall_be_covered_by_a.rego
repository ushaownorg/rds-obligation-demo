package rules.g_rds_instances_and_clusters_shall_be_covered_by_a

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHUPDATE": [
				"AWSRDSBENCHUPDATE_G"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 2.0",
	"id": "G",
	"title": "RDS instances and clusters shall be covered by a backup plan using AWS Backup or an equivalent backup solution.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.backup_retention_period > 0
}