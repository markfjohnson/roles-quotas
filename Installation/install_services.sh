#!/usr/bin/env bash
dcos package install --yes dcos-enterprise-cli
dcos package install --yes spark --options=sparky_spark_options.json