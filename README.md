# DevSecAiOps

# Launch instance
aws ec2 run-instances \
    --image-id ami-0055977a6e828a4f4 \
    --instance-type t3.micro \
    --security-groups "roboshop-common" \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=roboshop-ansible}]' \
	--query 'Instances[0].InstanceId' \
    --output text