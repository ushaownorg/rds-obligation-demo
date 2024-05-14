package rules.automatic_backups_for_relat_cies_regulatory_requirements

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"OBLIGATIONQASMOKE": [
				"OBLIGATIONQASMOKE_F"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 1.0",
	"id": "F",
	"title": "Automatic backups shall be enabled for Relational database instances and clusters, with an appropriate retention period based on organizational policies and regulatory requirements.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.backup_retention_period > 0
}

