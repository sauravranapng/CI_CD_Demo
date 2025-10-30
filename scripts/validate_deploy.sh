#!/bin/bash
set -e
echo "Validate: check the web page"
if curl -sS http://localhost/ | grep -q "CI/CD Demo"; then
  echo "Validation succeeded"
  exit 0
else
  echo "Validation failed"
  exit 1
fi
