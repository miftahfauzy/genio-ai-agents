#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_DIR"

command -v node >/dev/null 2>&1 || { echo "Node.js is required."; exit 1; }
command -v npm >/dev/null 2>&1 || { echo "npm is required."; exit 1; }

npm install
echo "Genio AI agents is ready. Run: npm run dev"
