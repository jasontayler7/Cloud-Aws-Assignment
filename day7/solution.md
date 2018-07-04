Task 1
Rajat is the devops guy in 'abc' organization and he is responsible for creating 't2.micro' and all the 'm' family of instances as per requirement but he can't terminate 'm' family of instances but that's not the case with t2.micro. Tejasvi Rana has got root access to the account but he isn't a technical guy. He is always suspicious about Rajat's actions in company's aws account. Luckily Tejasvi has got a friend, Priyanka jugran, she is amazon certified and knows everything about aws. Tejasvi wants Priyanka to cross check rajat's IAM permissions. In order to do that, he gave priyanaka full access. Now priyanka needs s3 storage for one of her friend, priyanka sharama to run athena queries for data analysis,they don't want to pay for that from their own aws account. Jugran has created a bucket with name 'abc-data' with a policy that sharma will only be able to access this bucket from a particular ec2 instance that she created & provided the user details to sharma. Rajat referenced his friends kavit and vishwas to his organization and now all of then share the same permission level. Kushgra is also one of the team memebers from operations team but recently he has got a task to create and run lambda function that is going to access rds database.

How many IAM groups gets created
How many IAM users gets created
Permissions associated with them

Solution: 

       IAM Group Created : 2 (Devops & Operation)
       IAM Users created: 5 ( Rajat, Priyanka Jugran , Kavit, Vishwas & kushgra)
       Permisiion : 5 
       
       
       First case, I have created user names (Rajat, Kavit, & Vishwas) and include in group "Devops"
       Attach below listed policies to Devops group:
       1) t2.micro creation policy.
       2) m category family instance termination protection.
       
       Second case, I have attached lambda full access policy to kushgra
       Created a role of lambda function which access RDS service. Attach this role to "Operation" group.
       
       
       In the Third case, I have to provide specific s3 bucket access to Priyanka sharma.
       So created role EC2 which access specific S3 bucket. After that we have attach this role to Instance and try to access specific bucket.
       Now I am sucecssfully upload data to this S3 bucket using AWS Cli. I have also tried to other bucket in the same account but as per role permission it is not accesible.
       
  
     
       
       
