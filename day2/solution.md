AWS Assignment Day-2


Task 1

    Create a vpc not by wizard this time but manually, having 2 public subnets and 2 private subnets and 2 protected subnets.

    setup should be highly available

    Create 1 IGW and 2 NGW in each availability zone and make the appropriate routes in route tables

    Main route will remain intact, instead make 4 route tables

    public_route_table
    private_route_table_1
    private_route_table_2
    protected_route_table

        Solution : 
           Created VPC manually and also 2 public and 2 private and 2 protected subnets.
  ![myvpc](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/Myvpc.png)
  ![myigw](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/myigw.png)
  
           So we have created our setup on 2 availablity zones.
           We have created 2 NGW and attached to public subnet and routed the internet connectivity to private subnet. Attached 1 IGW to VPC
   ![Routetables](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/Routetables.png)

Task 2

    Make LAMP setup with 2 instances in each private subnets.

    Server-1 should serve a webpage that would say "Hi! i am server 1"

    Server-2 should serve a webpage that would say "Hi! i am server 2"

         Solution : 
           Created 2 instances in each private subnets and created LAMP.
            my first instance serves "Hi! i am server 1" which is resides in first private subnet of availablity zone
   ![privatesubnet1](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/privatesubnet1.png)
   
            
            my second instance serves "Hi! i am server 2" which is resides in second private subnet of availablity zone
   
   ![privatesubnet1b](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/privatesubnet1b.png)         

Task 3

    Launch a public load balancer that would forward the requests to these 2 LAMP instances

    create the same setup using aws-cli except vpc

         Solution :
            Created public load balancer and attached with my public subnets.
            I have also target the private subnets machines through load balancer and after the all configuration.
            Browsed load balancer dns in web browser and check the avaiblity of websites.
![loadbalancer](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/loadbalancer.png)

![loadbalancer2](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/9892b4683e53d204e73391732d469f3fbd480765/day2/media/loadbalancer2.png)


I will perform this above task using AWS Cli
