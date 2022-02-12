PATH="$PATH:$HOME/.local/bin"
LSQLITE_VER="0.9.5-1"
LSQLITE_UUID="fsl09y"


pip3 install hererocks
hererocks env --lua 5.1 -rlatest
source env/bin/activate

curl "http://lua.sqlite.org/index.cgi/zip/lsqlite3_${LSQLITE_UUID}.zip" --output lsqlite3.zip
unzip lsqlite3.zip
cd "lsqlite3_${LSQLITE_UUID}"

luarocks make "lsqlite3complete-${LSQLITE_VER}.rockspec" --no-install --lua-version 5.1
mv lsqlite3complete.so ../
