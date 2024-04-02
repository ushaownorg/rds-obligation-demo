package rules.f_automatic_backups_shall_be_enabled_for_rds_insta

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH3": [
				"AWSRDSBENCH3_F"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - v1 - Version: 3.0",
	"id": "F",
	"title": "Automatic backups shall be enabled for RDS instances and clusters, with an appropriate retention period based on organizational policies and regulatory requirements.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.backup_retention_period > 0
}