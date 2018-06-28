job('STOPEC2INSTANCE')
{
   parameters
  {
     
    stringParam('InstanceID', '')
}
 steps
  {
    shell('aws ec2 stop-instances --instance-ids ${InstanceID}')
  }
 
}
