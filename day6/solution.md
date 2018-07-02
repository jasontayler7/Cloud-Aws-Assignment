AWS Assignment Day-5

Task 1

    Host a static website using s3 as follows:

    Buy a domain from Freenom as yourname.opstree.com

 example: yashvinderopstree.com (Don't worry it's free)

    Migrate this domain to Route53
    Host a static website using s3 bucket

Solution: 
      Signup on freenom website and buy free website (kamalopstree.tk)
      
      Created hosted zones in AWS route 53 service and got 4 name servers (NS record).
   ![route53configuration](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day6/media/route53configuration.png)
      
      After that freenom domain configuration webpage, I have pointed domain name to  AWS name servers.
      
      Created s3 bucket with same name kamalopstree.tk and configured A record to bucket   
  ![s3bucket](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day6/media/s3bucket.png)
      
      
      Now the webpage is browsable using this link kamalopstree.tk
      
   ![staticwebsite](https://github.com/kamal24111991/Cloud-Aws-Assignment/blob/master/day6/media/staticwebsite.png)
      
