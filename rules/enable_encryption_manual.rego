package rules.enable_encryption_manual


	
	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0": [
					"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0_9fa553a2-5803-49fc-b0a0-236e8e1ac5d1"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: testing-1615 - Version: 1.0.5",
		"id": "9fa553a2-5803-49fc-b0a0-236e8e1ac5d1",
		"title": "Enable Encryption at Rest (Manual)",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.storage_encrypted == true
}

