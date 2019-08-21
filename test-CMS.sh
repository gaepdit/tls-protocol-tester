#!/bin/dash
echo "Testing CMS servers"
echo "Testing CMS servers" > output

./testssl.sh -b >> output

./testssl.sh -p -q 167.192.208.133 >> output
./testssl.sh -p -q 167.192.208.134 >> output
./testssl.sh -p -q 167.192.208.199 >> output
./testssl.sh -p -q 167.192.208.200 >> output
./testssl.sh -p -q 167.192.208.201 >> output

echo "Generating output file"

cat output | ~/scripts/scripts/ansi2html.sh > CMS-SSL-tests.html

echo "Copying to E:/"

cp CMS-SSL-tests.html /mnt/e/docs/testssl

echo "Done"
