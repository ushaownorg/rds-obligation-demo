package rules.systemd_service_files_are_automated


	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"3bfc5496-2142-495f-8e18-d34db195e08c": [
					"3bfc5496-2142-495f-8e18-d34db195e08c_58c27a0f-a490-4f99-9562-a3be8a1d2bcb"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: POSTGRESQASMOKE - Version: 1.0.5",
		"id": "58c27a0f-a490-4f99-9562-a3be8a1d2bcb",
		"title": "Ensure systemd Service Files Are Enabled (Automated)",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.auto_minor_version_upgrade == true
}

