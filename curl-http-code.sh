# This script do a cycle to read all the lines in file "url-list"
# Usign curl with get the http code of the url and print it with the url

#!/bin/bash
while read LINE; do
  curl -o /dev/null --silent --head --write-out '%{http_code}' "$LINE"
  echo ' '$LINE
done < url-list
