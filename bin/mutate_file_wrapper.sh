#!/usr/bin/env bash

trap '{ rm -f "$tempfile"; }' EXIT
tempfile="$(mktemp)"
cat > $tempfile || exit -1
$@ "$tempfile"
if [ "$?" -ne 0 ]; then
  exit "$?"
fi
cat "$tempfile"
exit 0
