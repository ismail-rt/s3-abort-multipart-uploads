#!/bin/bash
BUCKET="your_bucket_name_here"

aws s3api list-multipart-uploads --bucket "$BUCKET" | \
  jq -r '.Uploads[] | [.Key, .UploadId] | @tsv' | \
  while IFS=$'\t' read -r key upload_id; do
    echo "Aborting upload $upload_id for key $key"
    aws s3api abort-multipart-upload --bucket "$BUCKET" --key "$key" --upload-id "$upload_id"
  done
