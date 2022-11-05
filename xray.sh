#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9098d937-d997-4b84-ac64-fa4fb7d6b09c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

