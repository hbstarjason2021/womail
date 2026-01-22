echo '------------------sign------------------'
## curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados.one"}' -X POST 'https://glados.rocks/api/user/checkin' -s | grep -Eo '"message":"[^"]*"'

curl -s -X POST "https://glados.cloud/api/user/checkin" \
-H "cookie: ${COOKIE}" \
-H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36" \
-H "content-type: application/json;charset=UTF-8" \
-H "origin: https://glados.cloud" \
-H "referer: https://glados.cloud/console/checkin" \
-d '{"token":"glados.cloud"}'  | grep -Eo '"message":"[^"]*"'

echo '-----------------status-----------------'
curl 'https://glados.cloud/api/user/status' \
  -b "${COOKIE}" | grep -Eo '"leftDays":"[^"]*"' 
