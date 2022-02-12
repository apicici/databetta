PATH="$PATH:$HOME/.local/bin"
LSQLITE_VER="0.9.5-1"
LSQLITE_UUID="fsl09y"


pip3 install hererocks
hererocks env --lua 5.1 -rlatest
source env/bin/activate
luarocks install moonscript

curl "http://lua.sqlite.org/index.cgi/zip/lsqlite3_${LSQLITE_UUID}.zip"
unzip "lsqlite3_${LSQLITE_UUID}.zip"
cd "lsqlite3_${LSQLITE_UUID}"

luarocks make "lsqlite3complete-${LSQLITE_VER}.rockspec" --no-install --lua-version 5.1
