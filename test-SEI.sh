#!/bin/dash
echo "Testing SEI servers"
echo "Testing SEI servers" > output

./testssl.sh -b >> output

./testssl.sh -p -q 10.149.210.226 >> output
./testssl.sh -p -q 10.149.210.227 >> output
./testssl.sh -p -q 10.149.210.228 >> output
./testssl.sh -p -q 10.149.211.66 >> output
./testssl.sh -p -q 10.149.211.67 >> output
./testssl.sh -p -q 10.149.211.68 >> output

echo "Generating output file"

cat output | ~/scripts/scripts/ansi2html.sh > SEI-SSL-tests.html

echo "Copying to E:/"

cp SEI-SSL-tests.html /mnt/e/docs/testssl

echo "Done"
