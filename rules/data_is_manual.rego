package rules.data_is_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_7cb7dd00-cdcd-48a0-9544-5df6fb578feb"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "7cb7dd00-cdcd-48a0-9544-5df6fb578feb",
	"title": "Ensure Data at Rest is Encrypted (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.skip_final_snapshot == false
}

