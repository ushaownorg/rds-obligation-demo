package rules.public_user_access_relation_uired_for_specific_use_cases

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"OBLIGATIONQASMOKE": [
				"OBLIGATIONQASMOKE_D"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 1.0",
	"id": "D",
	"title": "Public user access to Relational database instances and clusters shall be restricted unless explicitly required for specific use cases.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.publicly_accessible == false
}

