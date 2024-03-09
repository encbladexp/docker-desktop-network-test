#!/bin/bash

set -euo pipefail

docker compose up --build

docker compose down -v
