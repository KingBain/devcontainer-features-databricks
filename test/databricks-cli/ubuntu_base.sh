#!/bin/bash
# This test file is executed against the 'ubuntu_base' scenario defined
# in test/databricks-cli/scenarios.json.

set -e

# Import test lib
source dev-container-features-test-lib

# Same basic checks as the auto test, but now scoped to this explicit scenario.
check "ubuntu_base: databricks is on PATH" bash -lc "command -v databricks"
check "ubuntu_base: databricks -v runs" bash -lc "databricks -v"

reportResults
