#!/usr/bin/env bash
set -euo pipefail
SELF_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_PY="$SELF_DIR/venv/bin/python"
if [ -x "$VENV_PY" ]; then
  echo "Using virtualenv python: $VENV_PY"
  "$VENV_PY" "$SELF_DIR/pt_hub.py"
else
  echo "Virtualenv not found; running system python. Consider creating venv with: python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt"
  python3 "$SELF_DIR/pt_hub.py"
fi
