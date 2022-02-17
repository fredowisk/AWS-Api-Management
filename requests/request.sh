HOST=http://localhost:3000
# HOST='Your host'
APIKEY="d41d8cd98f00b204e9800998ecf8427e"
# APIKEY="Your api key"
curl --silent \
    -H "x-api-key: $APIKEY" \
    $HOST/dev/hello

# echo "Press <Ctrl + C> to exit."
# while :
# do
#   curl --silent \
#     -H "x-api-key: $APIKEY" \
#     $HOST/dev/hello
# done

curl --silent \
    $HOST/dev/getUsagePlans | tee getUsagePlans.log

#from get usage plans
#0b8tbe is for free plans
USAGE_PLAN_ID="0b8tbe"
KEYID='Your key id'
APIKEY="Your api Key"
FROM="2022-02-16"
TO="2022-02-17"

curl --silent \
    "$HOST/dev/getUsage?keyId=$KEYID&usagePlanId=$USAGE_PLAN_ID&from=$FROM&to=$TO" \
    | tee usage.log