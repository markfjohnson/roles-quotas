#!/usr/bin/env bash
curl -d @sparky_node_reservation.json -X POST http://server1:5050/reserve

curl -X GET http://server1:5050/reserve