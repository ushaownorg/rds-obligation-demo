package rules.c_rds_instances_and_clusters_shall_be_deployed_wit

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCH3": [
				"AWSRDSBENCH3_C"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - AWS RDS - Best Practice - v1 - Version: 3.0",
	"id": "C",
	"title": "RDS instances and clusters shall be deployed within a Virtual Private Cloud (VPC) and secured using appropriate security groups and network access control lists (NACLs).",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.vpc_security_group_ids != null
}