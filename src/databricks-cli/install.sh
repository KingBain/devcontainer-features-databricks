#!/usr/bin/env bash
set -euo pipefail

echo "[databricks-cli] Installing Databricks CLI via official installer..."

# Idempotent: if it's already installed, don't re-install
if command -v databricks >/dev/null 2>&1; then
  echo "[databricks-cli] Databricks CLI already installed at $(command -v databricks)"
  databricks version || true
  exit 0
fi

export DEBIAN_FRONTEND=noninteractive

# Make sure curl + unzip exist (template uses Ubuntu/Debian base images)
apt-get update -y
apt-get install -y curl unzip

# Run Databricks' official installer script
curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh

# Verify
if ! command -v databricks >/dev/null 2>&1; then
  echo "[databricks-cli] ERROR: 'databricks' not found on PATH after install." >&2
  exit 1
fi

echo "[databricks-cli] Installed Databricks CLI:"
databricks version || true
