# HOST=http://localhost:3000
HOST='Your host'
# APIKEY="d41d8cd98f00b204e9800998ecf8427e"
APIKEY="Your api key"
curl --silent \
    -H "x-api-key: $APIKEY" \
    $HOST/dev/hello

echo "Press <Ctrl + C> to exit."
while :
do
  curl --silent \
    -H "x-api-key: $APIKEY" \
    $HOST/dev/hello
done