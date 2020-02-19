#!/usr/bin/env bash
echo "Testing SEI servers"
echo "░▒▓█ Testing SEI servers" > output

testssl.sh/testssl.sh -b >> output

echo "░▒▓█ Testing 10.149.210.226" >> output
testssl.sh/testssl.sh -p -q 10.149.210.226 >> output
echo "░▒▓█ Testing 10.149.210.227" >> output
testssl.sh/testssl.sh -p -q 10.149.210.227 >> output
echo "░▒▓█ Testing 10.149.211.66" >> output
testssl.sh/testssl.sh -p -q 10.149.211.66 >> output
echo "░▒▓█ Testing 10.149.211.67" >> output
testssl.sh/testssl.sh -p -q 10.149.211.67 >> output
echo "░▒▓█ Testing 10.149.211.68" >> output
testssl.sh/testssl.sh -p -q 10.149.211.68 >> output
echo "░▒▓█ Testing 10.50.33.226" >> output
testssl.sh/testssl.sh -p -q 10.50.33.226 >> output
echo "░▒▓█ Testing 10.50.33.227" >> output
testssl.sh/testssl.sh -p -q 10.50.33.227 >> output

echo "Generating output file"

cat output | scripts/scripts/ansi2html.sh > SSL-test-results.html

echo "Copying to E:/"

cp SSL-test-results.html /mnt/e/docs/SSL-test-results.html

echo "Done"
