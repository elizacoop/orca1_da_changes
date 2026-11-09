#!/bin/bash

set -euo pipefail

START=2
END=18



for i in $(seq "$START" "$END"); do
DST="./ens${i}"
(
  cd "$DST"
  sbatch myscript_exp03.slurm
)

sleep 3
done

echo "All jobs submitted"

