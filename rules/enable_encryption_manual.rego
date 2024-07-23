package rules.enable_encryption_manual


	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"ea732f37-b4d8-45c1-8741-a6e1f25b7a10": [
					"ea732f37-b4d8-45c1-8741-a6e1f25b7a10_17884473-4e1e-4677-a81a-4d25048b067f"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: testing-1615 - Version: 1.0.2",
		"id": "17884473-4e1e-4677-a81a-4d25048b067f",
		"title": "Enable Encryption at Rest (Manual)  ",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.storage_encrypted == true
}

