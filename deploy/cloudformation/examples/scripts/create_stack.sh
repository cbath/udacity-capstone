aws cloudformation create-stack --stack-name $3 --template-body file://$1  --parameters file://$2 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"

#