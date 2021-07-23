![Screenshot from 2021-07-23 13-52-59](https://user-images.githubusercontent.com/78690371/126742707-82e9c34f-32dc-4948-864c-16f43c42c6be.png)
# terraform-aws-project
vprofile-Project

**Scenaio**
  cloud mgmt Team
  deploy/setup 

**Problems**
  complex infra
  not repeatable
  difficult to track,not centralized
  huge chancees of human error
  managing is time consuming/costly

**Solution:**
  Configuration mgmt of infra
  Automatic Setup ( no human error)
  Maintain state of infra
  Version control
  repeatable, reusable code
  

 **** Tools** **: Teraaform Configuration mgmt of cloud 
**
  Setup:**
        setup Teraaform with backend
        setup vpc (secure & HA)
        provision of Beanstalk Enviroment
        provision of backend Services
            RDS
            Elastic Cache
            Active MQ
        Security Group, key-pairs, Bastion host....  
        
******Master File***********
Have created master file which contains all the tf code for building Beanstalk app on cloud.
        

