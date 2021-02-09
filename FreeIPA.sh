# Login with user name and password
curl -vk  \
-H Referer:https://ipa-prod01.dialogtech.com/ipa  \
-H "Content-Type:application/x-www-form-urlencoded" \
-H "Accept:text/plain" \
-c $COOKIEJAR -b $COOKIEJAR \
--data "user=$_USERNAME&password=$_PASSWORD" \
-X POST \
https://ipa-prod01.dialogtech.com/ipa/session/login_password
