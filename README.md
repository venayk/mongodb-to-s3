# mongodb-to-s3
Backup and restore InfluxDB databases from S3

For backup:
docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest backup

For restore:
docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest restore
