#!/bin/dash
echo "Testing SEI Disaster Recovery servers"
echo "░▒▓█ Testing SEI Disaster Recovery servers" > output

./testssl.sh -b >> output

echo "░▒▓█ Testing 10.50.33.226" >> output
./testssl.sh -p -q 10.50.33.226 >> output
echo "░▒▓█ Testing 10.50.33.227" >> output
./testssl.sh -p -q 10.50.33.227 >> output

echo "Generating output file"

cat output | ~/scripts/scripts/ansi2html.sh > SEI-SSL-tests-DR.html

echo "Copying to E:/"

cp SEI-SSL-tests-DR.html /mnt/e/docs/testssl-results

echo "Done"
