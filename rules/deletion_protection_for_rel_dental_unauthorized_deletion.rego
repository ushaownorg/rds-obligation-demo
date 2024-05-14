package rules.deletion_protection_for_rel_dental_unauthorized_deletion

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"OBLIGATIONQASMOKE": [
				"OBLIGATIONQASMOKE_I"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 1.0",
	"id": "I",
	"title": "Deletion protection not be enabled for Relational database instances and clusters to prevent accidental or unauthorized deletion.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.deletion_protection == true
}

