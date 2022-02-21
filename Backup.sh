#!/bin/bash
# Check if the file is exist or not, if file is exist then zip "config.zip"
File=config1.yaml
if [ -f "$File" ];
then
zip config.zip $File
aws s3 cp ./config.zip s3://ct-123-deploy/success/
echo "$File is exist"
else
echo "$File does not exist"  
fi

#upload Zip file to S3 bucket 
#echo "Copy the file to S3 Bucket"
#aws s3 cp ./config.zip s3://ct-123-deploy/success/
#echo "Zip file has been uploaded to S3 Bucket"
