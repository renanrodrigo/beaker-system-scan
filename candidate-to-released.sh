#!/bin/bash
set -e
usage() {
    echo "Moves all builds from their *-candidate tags to *" >&2
    echo "Usage: $0 <ver-rel>, example: $0 0.7.2-1" >&2
    exit 1
}
[[ -z "$VERREL" ]] && VERREL="$1"
[[ -z "$VERREL" ]] && usage
brew move-pkg dist-5E-eso{-candidate,} beaker-system-scan-$VERREL.el5
brew move-pkg eng-rhel-6{-candidate,} beaker-system-scan-$VERREL.el6eng
brew move-pkg eng-rhel-7{-candidate,} beaker-system-scan-$VERREL.el7eng
