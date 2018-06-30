AWS Assignment Day-3


Task 1

    Create a linux t2.micro ec2 instance. After logging into this instance move /etc/sudoers file with /etc/sudoers.bkp

    Now try to login, If can't - resolve this issue
    
    Soultion:
    Created another instance with tag name recovery in same availablity zone.
    Detached root volume from the first instance.
    Now we have attached this free volume with name /dev/xvdf to recovery instance.
    Create a mount point and mount this  volume. After the browsed the content of /etc directory and renamed the "sudoers.bkp" file to "sudoers"
 ![recoversudoersfile](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/recoversudoersfile.png)
![awsrecoverymachine](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/awsrecoverymachine.png)
    Post changes attached this volume to first instance and started the server.
    ![recoverydiskattachment](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/recoverydiskattachment.png)
    Finally i regain the access of sudoers and root user.    
 ![Suceessfulrecovery](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/Suceessfulrecovery.png)
 
Task 2

    create an ansible role before pushing the same to your public github repository.

    This Role will simply host an nginx webpage saying

    "Hi i am ninja and my name is {yourname}"

    Execute this role in user data script while launching another instance

    Your website should be up & running after the system boots up

    tag this instance as ninja:yourname

    Solution: Created nginx role and commited to git repository.
    https://github.com/kamal24111991/nginxrole
    
    Created shell script for running this ansible role and serves the above mentioned line on http port 80 .
    https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/Userdata.md
    
   ![Nginxserver](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/Nginxserver.png)
   
    Put above shell script in user data of AWS EC2 instance launch.
    

Task 3

    write a jobDsl to start stop this instance through jenkins
    Solution: 
    
    Install the awscli to jenkins server.
    Created IAM user "Jenkins" and provide the EC2 full access role and provide programatic access.
    Created access and secret access keys.
    Configure this user key jenkins server aws cli for region "ap-south-1"
    Now I created job dsl in jenkins for start and stop instance.
   ![startec2instance](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/startec2instance.groovy)
   
   ![stopec2instance](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/stopec2instance.groovy)
   
   
   ![stopEC2Instance](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/stopEC2Instance.png)
   ![startEC2Instance](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day3/media/startEC2Instance.png)
