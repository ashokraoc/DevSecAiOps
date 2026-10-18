#!/bin/bash

# **Rule 1: No spaces around the '=' sign**

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../config/variables.sh"

echo "$person1: Hi ${person2}"
echo "$person2: Hi ${person1}"
echo "$person2: Tell me something good ${person1}."