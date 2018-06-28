job('STARTEC2INSTANCE')
{
   parameters
  {
     
    stringParam('InstanceID', '')
}
 steps
  {
    shell('aws ec2 start-instances --instance-ids ${InstanceID}')
  }
 
}
