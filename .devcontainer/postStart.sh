#!/usr/bin/env bash
set -euo pipefail

# Attempt to create a terminal editor in VS Code only if the `code` CLI is available.
# Run in the background so this script won't delay container startup.
if command -v code >/dev/null 2>&1; then
  code --command workbench.action.createTerminalEditor >/dev/null 2>&1 &
fi
