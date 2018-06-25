AWS Assignment Day-1


Task 1

    Create a vpc through wizard, having one public subnet and one private subnet.

    Solution: 
          Created VPC through vpc wizard of 10.0.0.0/16 CIDR in mumbai region.
          Created Public subnet with 10.0.0.0/24
          Created private subnet with 10.0.1.0/24


Task 2

    Create two instances within the vpc that you created in task 1, windows instance in public subnet and linux instance in private subnet. check if linux is pingable from windows and vice versa.
        Solution:
               Created windows EC2 instance in public subnet and by default port rdp 3389 port allowed.
               Created linux EC2 instance in private subnet and by default port ssh 22 port allowed.
               Both instances are not pingable.




Task 3

    Delete all the instances and now make those two instances that you created in previous task using aws-cli.

       Solution: First I have installed AWS Cli for linux and configure it with my rootkeys.


        # Install AWS Cli

        pip install awscli --upgrade --user

        aws –version

        # Configure cli with your AWS Account
 
        Aws configure

        # Created key pair "myprivatekey" and stored private key local directory.


         aws ec2 create-key-pair --key-name myprivatekey --query 'KeyMaterial' --output text > /root/myprivatekey.pem
      
        # Created Security group with name "mysecuritygroup"

         aws ec2 create-security-group --group-name mysecuritygroup --description "My first security group" --vpc-id vpc-053846d9d8c0c509a


          Security group id :     "GroupId": "sg-00f3d6d377f0845fa" 





         # command to create linux EC2 Instance in private subnet



         aws ec2 run-instances --image-id ami-7d95b612 --count 1 --instance-type t2.micro --key-name myprivatekey --security-group-ids sg-00f3d6d377f0845fa --subnet-id subnet-06c7c9fcc1e0cdb7d




        # Command to create windows EC2 Instance in public subnet.


         aws ec2 run-instances --image-id ami-5f95bd30 --count 1 --instance-type t2.micro --key-name myprivatekey --security-group-ids sg-00f3d6d377f0845fa --subnet-id subnet-04ac2a9ce4051eaf0
	


