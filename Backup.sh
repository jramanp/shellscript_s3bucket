#!/bin/bash
# Check if the file is exist or not, if file is exist then zip "config.zip"
File=config.yaml
if [ -f "$File" ];
then
zip -r config.zip $File
echo "$File is exist"
else
echo "$File does not exist"  
fi

#upload Zip file to S3 bucket 
echo "Coping the file S3 Bucket"
aws s3 cp $File s3://ct-ctr-deployments-at12/success/
echo "Zip file has been uploaded to S3 Bucket"