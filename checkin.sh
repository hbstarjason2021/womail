echo '------------------sign------------------'
## curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados.one"}' -X POST 'https://glados.rocks/api/user/checkin' -s | grep -Eo '"message":"[^"]*"'

curl 'https://glados.rocks/api/user/checkin' \
  -H 'authority: glados.rocks' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: zh-CN,zh;q=0.9' \
  -H 'authorization: 634716697482871854094007969047-844-390' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H "cookie:${COOKIE}"
  -H 'origin: https://glados.rocks' \
  -H 'pragma: no-cache' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1' \
  --data-raw '{"token":"glados.one"}' \
  --compressed


echo '-----------------status-----------------'
curl -H "cookie:${COOKIE}" -X GET 'https://glados.rocks/api/user/status' -s| grep -Eo '"leftDays":"[^"]*"'
