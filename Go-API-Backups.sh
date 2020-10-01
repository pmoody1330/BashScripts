#curl http://192.168.1.142:8153/go/api/admin/config_xml

#curl http://192.168.1.111:8153/go/api/admin/config_xml

curl 'http://192.168.1.111:8183/go/api/backups' \
      -i \
      -H 'X-GoCD-Confirm: true' \
      -H 'Accept: application/vnd.go.cd.v2+json' \
      -X POST

# OUTPUT from command above
#HTTP/1.1 202 Accepted
#Date: Thu, 01 Oct 2020 01:59:11 GMT
#X-XSS-Protection: 1; mode=block
#X-Content-Type-Options: nosniff
#X-Frame-Options: SAMEORIGIN
#X-UA-Compatible: chrome=1
#Set-Cookie: JSESSIONID=node0hzx0bu1nz50hamhhcph1ztt09708.node0; Path=/go; Expires=Thu, 15-Oct-2020 01:59:11 GMT; Max-Age=1209600; HttpOnly
#Expires: Thu, 01 Jan 1970 00:00:00 GMT
#Cache-Control: max-age=0, private, must-revalidate
#Content-Type: application/vnd.go.cd.v2+json;charset=utf-8
#Location: /go/api/backups/2
#Retry-After: 5
#X-Runtime: 9
#Vary: Accept-Encoding, User-Agent
#Transfer-Encoding: chunked

# URL https://api.gocd.org/current/#schedule-backup

ls /go-working-dir/artifacts/serverBackups # to verify a new file

