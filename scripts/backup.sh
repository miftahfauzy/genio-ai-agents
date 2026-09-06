#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ARCHIVE_DIR="${1:-/Users/ozzy/labs/GENIO AI Archieves}"
STAMP="$(date +%Y%m%d-%H%M%S)"
DEST="$ARCHIVE_DIR/genio-ai-agents-$STAMP"

mkdir -p "$DEST"
rsync -a --exclude node_modules --exclude .DS_Store "$PROJECT_DIR/" "$DEST/"
cat > "$DEST/BACKUP-METADATA.txt" <<EOF
GENIO AI agents backup
Created: $(date)
Source: $PROJECT_DIR
GitHub: https://github.com/miftahfauzy/genio-ai-agents
Vercel: https://genio-ai-agents.vercel.app
EOF
echo "Backup created at: $DEST"
