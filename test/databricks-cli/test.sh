#!/bin/bash
# This test file will be executed against an auto-generated devcontainer.json
# that includes the 'databricks-cli' Feature with no options.
#
# Example devcontainer.json:
# {
#   "image": "<base-image-from-matrix>",
#   "features": {
#     "databricks-cli": {}
#   },
#   "remoteUser": "root"
# }

set -e

# Import test library bundled with the devcontainer CLI
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Feature-specific tests
check "databricks is on PATH" bash -lc "command -v databricks"

# Just check that the CLI can report its version successfully.
# The Databricks installer itself uses 'databricks -v'.
check "databricks -v runs" bash -lc "databricks -v"

# Report results (fails if any check above failed)
reportResults
