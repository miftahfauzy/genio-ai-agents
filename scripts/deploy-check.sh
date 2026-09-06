#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://genio-ai-agents.vercel.app}"
STATUS="$(curl -L -s -o /dev/null -w '%{http_code}' "$URL")"
if [ "$STATUS" = "200" ]; then
  echo "Deployment healthy: $URL"
else
  echo "Deployment returned HTTP $STATUS: $URL"
  exit 1
fi
