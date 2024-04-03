package rules.h_enhanced_monitoring_shall_be_enabled_for_rds_ins

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHDELETE": [
				"AWSRDSBENCHDELETE_H"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 2.0",
	"id": "H",
	"title": "Enhanced monitoring shall be enabled for RDS instances to collect detailed performance metrics.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.monitoring_interval > 0
}