package rules.monitoring_logging_is_manual


	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"ea732f37-b4d8-45c1-8741-a6e1f25b7a10": [
					"ea732f37-b4d8-45c1-8741-a6e1f25b7a10_e1c99a2a-68ec-4b29-b2d1-30897dd71a13"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: testing-1615 - Version: 1.0.2",
		"id": "e1c99a2a-68ec-4b29-b2d1-30897dd71a13",
		"title": "Ensure Monitoring and Logging is Enabled (Manual)",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.monitoring_interval == 60
}

