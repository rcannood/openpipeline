#!/bin/bash

set -ex

echo ">>> Running executable"
$meta_executable \
    --sam "$meta_resources_dir/demuxafy_test_data/pooled.sorted.bam" \
    --vcf "$meta_resources_dir/demuxafy_test_data/test_dataset.vcf" \
    --output demuxlet_result/ \
    --out out \
    --field GP

[[ ! -f demuxlet_result/out.best ]] && echo "Output result file could not be found!" && exit 1
[[ ! -f demuxlet_result/assignment.tsv ]] && echo "Output donor assignment file could not be found!" && exit 1

echo ">>> Test finished successfully"
