echo '------------------sign------------------'
## curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados.one"}' -X POST 'https://glados.rocks/api/user/checkin' -s | grep -Eo '"message":"[^"]*"'

curl -X POST 'https://glados.rocks/api/user/checkin' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H "cookie:${COOKIE}" \
  --data-raw '{"token":"glados.one"}' | grep -Eo '"message":"[^"]*"'


echo '-----------------status-----------------'
curl -H "cookie:${COOKIE}" -X GET 'https://glados.rocks/api/user/status' | grep -Eo '"leftDays":"[^"]*"'
