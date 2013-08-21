# This script will make a search for the string "hello" in current folder
# It will ommit the folder ommit1 and ommit2
# It will go inside the links in case there are some

find -L . -not -path "./ommit1/*" -not -path "./ommit2/*" -exec grep -Hn "hello" {} \;
