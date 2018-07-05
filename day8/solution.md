AWS Assignment Day-8

Task 1
Create an infrastructure that would scale as per load: Create cloudwatch alarms for scaling up and scaling down along with sns topic to notify you during any scaling operation

Put fake load on the stack
scale up if av. cpu threashold > 70
scale down if av. cpu threashold < 40
First do it via console and then via aws cli


Solution: 
      
1) In today's assignment, I have created Alert Notification on my email id using AWS SNS service.

![SNSNotification-Topic](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/SNSNotification-Topic.png)

2) Created Launch configuration and configured with specified AMI.
 
![LauchConfiguration](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/LauchConfiguration.png)

3) After that created Autoscaling Group with scaling up policy "scale up if av. cpu threashold > 70" with cloud watch monitoring
configured scale down policy "scale down if av. cpu threashold < 40" with cloud watch monitoring
                  Min=1 , Desired=1 ,  Max=3
  AutoscalingGroup-Policy                
![Autoscalinggroup-Policy](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Autoscalinggroup-Policy.png)

Autoscalinggroup-Details
![Autoscalinggroup-Details](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Autoscalinggroup-Details.png)

4) I have put fake load on server and initiated command 
      To fully utilize modern CPUs,  command to exhaust all the CPU power.  yes > /dev/null &      
      To end all of this, simply put  "killall yes"
      https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/first.png
      
      
5) Monitored server CPU load is more than 70% for 300 Second.Now the scale policy launched instances according to our policy rule.

Scaleup Alert
![Scaleup-Alert](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Scaleup-Alert.png)

Scaleup-policy1 
![Scaleup-policy1](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Scaleup-policy1.png)
     
6) Now I have kill the command of fake load from fisrt server and it scale policy cooldown the instances.
Scale Down Alert      
![Scaledown-policy1](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Scaledown-policy1.png)

Scale Down Result.
![Scaledown-policy3](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day8/media/Scaledown-policy3.png)
