# mongodb-to-s3
This image is uploads the zipped mongo backup and adds the tag to the copied timestamped object with key=flag value=1



For backup with default cron with every 1 AM:

docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest





For backup with provided cron exprssion:

docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest cron "\* \* \* \* \*"






For backup:

docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest backup





For restore:

docker run -e DATABASE=<db-name> -e DATABASE_HOST=<host> -e S3_BUCKET=<s3 bucket> -e AWS_ACCESS_KEY_ID=<aws access key> -e AWS_SECRET_ACCESS_KEY=<aws secret access key> -e AWS_DEFAULT_REGION=us-west-2 vinayk10/mongo-backup-restore:latest restore
