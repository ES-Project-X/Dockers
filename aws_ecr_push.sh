REGION=eu-west-1
ECR_ID=558216347146 # Replace with the correct ECR_ID

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ECR_ID.dkr.ecr.$REGION.amazonaws.com
docker image tag israelhikingmap/graphhopper:latest $ECR_ID.dkr.ecr.$REGION.amazonaws.com/project-x-graphhopper:latest
docker image push $ECR_ID.dkr.ecr.$REGION.amazonaws.com/project-x-graphhopper:latest