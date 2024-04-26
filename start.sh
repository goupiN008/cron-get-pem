echo "$CRON_EXPRESSION root /app/get_certificate.sh > /proc/1/fd/1 2>/proc/1/fd/2" >> /etc/crontab

echo "start cron-get-pem with $CRON_EXPRESSION"
echo
cron -f