package rules.rds_instances_clusters_jpmc_encryption_algorithms

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH": [
				"AWSRDSBENCH_A"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Tech Engg - AWS RDS - Best Practice Vishal Biraris - Version: 4.0",
	"id": "A",
	"title": "RDS instances and clusters shall be encrypted at rest using JPMC standard encryption algorithms.",
}

# Please write your OPA rule here

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.storage_encrypted == true
}
