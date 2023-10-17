#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail
set -x

cd ./modules

for i in $(ls -R ); do
  if [ -e "$i/main.tf" ]
  then
    echo $i
    terraform-docs markdown $i >$i/README.md
  fi
done
