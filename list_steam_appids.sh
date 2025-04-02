#/bin/sh
# usage: Pass the steamapps directory
# source: https://steamcommunity.com/app/221410/discussions/0/1621724915820500210#c2790495976033726339

find $1 -maxdepth 1 -type f -name '*.acf' -exec awk -F '"' '/"appid|name/{ printf $4 "|" } END { print "" }' {} \; | column -t -s '|' | sort -k 2
