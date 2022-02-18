HOST=http://localhost:3000

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
KEYID='your key id'
APIKEY="your api key"
FROM="2022-02-16"
TO="2022-02-18"

curl --silent \
    "$HOST/dev/getUsage?keyId=$KEYID&usagePlanId=$USAGE_PLAN_ID&from=$FROM&to=$TO" \
    | tee usage.log

CUSTOMER_NAME=customer@test.com

curl --silent \
    "$HOST/dev/addKey?name=$CUSTOMER_NAME&usagePlanId=$USAGE_PLAN_ID" \
    | tee addkey.log