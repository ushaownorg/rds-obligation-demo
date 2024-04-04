package rules.enhanced_monitoring_for_rds_detailed_performance_metrics

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH": [
				"AWSRDSBENCH_H"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Tech Engg - AWS RDS - Best Practice Vishal Biraris - Version: 4.0",
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
