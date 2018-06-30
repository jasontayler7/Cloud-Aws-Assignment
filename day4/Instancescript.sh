#! /bin/bash

echo "instance state"
read input
if [ $input == stop ]
then
echo "stop instances"
for((i=1;i<=3;i++))
do

var="$(aws ec2 start-instances --instance-ids `aws ec2 describe-instances --filters "Name=tag:boot-order,Values=$i" --query 'Reservations[].Instances[].InstanceId' --output text` | grep InstanceId | awk '{print $2}' | sed 's/"//g' | sed 's/,//g')"

echo $var
aws ec2 stop-instances --instance-ids $var
sleep 60
var2="$(aws ec2 describe-instances --instance-ids $var | jq -r '.Reservations[].Instances[].State.Name')"
if [ $var2 = stopped ];
then
echo "instance $i is stopped"
fi
done

elif [ $input == start ]
then
echo "starting instances"
for((i=3;i>=1;i--))
do
var="$(aws ec2 start-instances --instance-ids `aws ec2 describe-instances --filters "Name=tag:boot-order,Values=$i" --query 'Reservations[].Instances[].InstanceId' --output text` | grep InstanceId | awk '{print $2}' | sed 's/"//g' | sed 's/,//g')"
echo $var
aws ec2 start-instances --instance-ids $var
sleep 60
var2="$(aws ec2 describe-instances --instance-ids $var | jq -r '.Reservations[].Instances[].State.Name')"
if [ $var2 = running ];
then
echo "instance $i is running"
fi
done
fi
~    
