package rules.relational_database_instanc_k_access_control_lists_nacls

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"OBLIGATIONQASMOKE": [
				"OBLIGATIONQASMOKE_C"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 1.0",
	"id": "C",
	"title": "Relational database instances and clusters shall be deployed within a Virtual Private Cloud (VPC) and secured using appropriate security groups and network access control lists (NACLs).",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.vpc_security_group_ids != null
}

