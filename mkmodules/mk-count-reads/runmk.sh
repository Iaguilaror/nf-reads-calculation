#!/usr/bin/env bash

## Find files with .vcf extension
find -L . \
	-type f \
	-name '*.bam' \
	-exec dirname {} + \
| sort -u \
| sed "s#\$#/project_reads.stats#" \
| xargs mk
