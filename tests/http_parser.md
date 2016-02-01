# HTTP parser

Parse HTTP requests.

	$ mkdir apps
	$ cat <<< 'echo "This is my response."' > apps/app_1
	$ chmod a+x apps/app_1
	$ cat <<< 'echo "This is the home page."' > home
	$ chmod a+x ./home

	$ cat << __EOF__ | parse-http --apps ./apps --home ./home
	> GET /app_1 HTTP/1.1
	> Host: localhost
	> 
	> __EOF__
	< This is my response.

	$ cat << __EOF__ | parse-http --apps ./apps --home ./home
	> GET / HTTP/1.1
	> Host: localhost
	> 
	> __EOF__
	< This is the home page.
