package rules.c_rds_instances_and_clusters_shall_be_deploy_with_vpc

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWSRDSBENCHORIGINAL": [
				"AWSRDSBENCHORIGINAL_C"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Usha Testing original - Version: 1.0",
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