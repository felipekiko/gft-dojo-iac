import json
import uuid
import boto3


def lambda_handler(event, context):
    dynamodb = boto3.client('dynamodb')
    
    dynamodb.put_item(
        TableName='dojo-iac',
        Item={
            'id':{'S':str(uuid.uuid4())},
            'name':{'S':str(event['name'])}
        }
    )

    return {
        'statusCode': 200,
        'body': json.dumps('Saved!')
    }
