#!/bin/bash
# Global scenario test: run against the 'databricks_on_ubuntu' scenario.

set -e

source dev-container-features-test-lib

check "global: databricks is on PATH" bash -lc "command -v databricks"
check "global: databricks -v runs" bash -lc "databricks -v"

reportResults
