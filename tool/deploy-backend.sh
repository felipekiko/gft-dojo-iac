#!/bin/bash
for method in get post
do
    cp ../app/backend/$method.py .
    mv $method.py lambda_function.py
    zip -r9 lambda_function.zip lambda_function.py
    aws lambda update-function-code --function-name dojo-iac-$method --zip-file fileb://lambda_function.zip --publish --region us-east-1 --profile felipekiko
    rm lambda_function.*
done
