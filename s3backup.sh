#!/bin/bash
# Synch ~ryan/Desktop, recursion
/usr/local/bin/s3cmd  --skip-existing --acl-private --recursive --include=* sync ~/Desktop s3://BNJ 
# Synch Documents, no recursion
/usr/local/bin/s3cmd  --skip-existing --exclude-from=/Users/ryan/exclude.lst --acl-private sync ~/Documents s3://BNJ 
