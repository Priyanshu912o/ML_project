#!/bin/bash
# clean_dataset.sh
# Deletes only files inside dataset/enhanced and dataset/features
# Keeps directory structure intact

# Navigate to project root (ML_proj)
cd "$(dirname "$0")" || exit 1

# Define target directories
TARGETS=(
  "dataset/enhanced"
  "dataset/features"
)

# Loop through each target and delete only files
for dir in "${TARGETS[@]}"; do
  if [ -d "$dir" ]; then
    echo "Cleaning files in: $dir"
    find "$dir" -type f -delete
  else
    echo "Directory not found: $dir"
  fi
done

echo "Cleanup complete ✅"