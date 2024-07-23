package rules.only_approved_software_inst_s_may_used_network_endpoints


	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"ITPOLICY": [
					"ITPOLICY_4.0"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: Technology Governance - Information Technology - Information Security Policy - Version: 1",
		"id": "4.0",
		"title": "Only approved software installation methods may be used on Network endpoints",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.network_endpoint_registered == true
}

