#!/bin/bash

docker compose up -d --build

# Check the operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  open -a Safari http://localhost:8000
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
  # Windows (use Windows-specific commands)
  start chrome http://localhost:8000
else
  # Default behavior when opening the local browser is not supported
  echo "Local browser is not supported on this system."
fi