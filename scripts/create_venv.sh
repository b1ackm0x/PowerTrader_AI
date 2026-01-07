#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT/python_version"
if [ -d venv ]; then
  echo "Virtualenv already exists at python_version/venv"
  echo "To recreate, remove it first: rm -rf python_version/venv"
  exit 0
fi
python3 -m venv venv
. venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "Virtualenv created and requirements installed. Use: source python_version/venv/bin/activate" 
