#!/bin/bash
set -ex

workdir=$(dirname $0)
finder=$(find . -not -path '*/\.*' -type f -name '*.yaml')
yamllint -c $workdir/yamllint.yaml $finder
