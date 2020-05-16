if [ "$1" == "help" ]; then
    node ./node_modules/surge/lib/cli.js --help
else
    node ./node_modules/surge/lib/cli.js $@
fi
