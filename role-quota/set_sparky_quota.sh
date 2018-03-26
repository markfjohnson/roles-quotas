#!/usr/bin/env bash
curl -d @sparky_quota.json -X POST http://server1:5050/quota

# Notes: Cannot update a role's quota definition, only add