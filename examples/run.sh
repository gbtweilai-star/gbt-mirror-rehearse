#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_rehearse info
PYTHONPATH=src python -m gbt_mirror_rehearse check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_rehearse run   --payload '{}'
