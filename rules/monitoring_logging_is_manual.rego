package rules.monitoring_logging_is_manual


	
	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0": [
					"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0_32863cd3-966a-403f-af36-550d21e2f899"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: testing-1615 - Version: 1.0.5",
		"id": "32863cd3-966a-403f-af36-550d21e2f899",
		"title": "Ensure Monitoring and Logging is Enabled (Manual)",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.monitoring_interval == 60
}

