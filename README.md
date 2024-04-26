# cron-get-pem

cmd
```
docker run \
  --name cron-get-pem \
  --restart always \
  -e WEBSITE_HOST=google.com \
  -e CRON_EXPRESSION='*/1 * * * *' \
  -v $(pwd)/nginx/certs:/app/cert \
  goupin008/cron-get-pem
```