# s3-abort-multipart-uploads

An automated script to abort and clean up incomplete multipart uploads in Amazon S3, improving storage usage and reducing costs. The script is designed to be easily deployed in the AWS CloudShell environment.

## Description

Incomplete multipart uploads can lead to increased storage costs and clutter in your S3 buckets. This script iterates through all incomplete multipart uploads in a specified S3 bucket and aborts them, freeing up storage and reducing costs.

## Dependencies

- AWS CLI (configured with appropriate access credentials)
- `jq` command-line JSON processor

## Setup

1. Make sure you have the AWS CLI installed and configured with the appropriate access credentials.

2. Install `jq` by running the following command:

   ```bash
   sudo yum install -y jq
