#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
cd ..

source ./scripts/common/colors.sh

if [ $# -eq 0 ]; then
    echo "Run a script from root:  usage: ./scripts/run-script.sh <script-name.sh> ...args"
    exit
fi

echo -e "${COLORS_CYAN}Running Script${COLORS_END}:  ./scripts/$1 ${@:2}"

bash ./scripts/$1 ${@:2}
