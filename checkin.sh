echo '------------------sign------------------'
## curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados.one"}' -X POST 'https://glados.rocks/api/user/checkin' -s | grep -Eo '"message":"[^"]*"'

curl --http1.1 -X POST 'https://glados.rocks/api/user/checkin' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H "cookie:${COOKIE}" \
  -d '{"token":"glados.rocks"}'  | grep -Eo '"message":"[^"]*"'

curl --http1.1 -X POST 'https://glados.rocks/api/user/checkin' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H "cookie:${COOKIE}" \
  -d '{"token":"glados.one"}'  | grep -Eo '"message":"[^"]*"'

echo '-----------------status-----------------'
curl --http1.1 -H "cookie:${COOKIE}" -X GET 'https://glados.rocks/api/user/status' | grep -Eo '"leftDays":"[^"]*"'
