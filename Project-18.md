## __USING TERRAFORM IAC TOOL TO AUTOMATE AWS CLOUD SOLUTION FOR 2 COMPANY WEBSITES (REFACTORING) - CONTINUATION__

In two previous projects you have developed AWS Infrastructure code using Terraform and tried to run it from our local workstation.
Now it is time to introduce some more advanced concepts and enhance the code.

Firstly, we will explore alternative Terraform __backends__. A backend defines where Terraform stores its state data files - __terraform.tfstate__ file.

Terraform uses persisted state data to keep track of the resources it manages. Most non-trivial Terraform configurations either integrate with Terraform Cloud or use a backend to store state remotely. This lets multiple people access the state data and work together on that collection of infrastructure resources.

## __Introducing Backend on S3__

So far in this project, we have been using the default backend which is the local backend – it requires no configuration and the states file is stored locally. This mode is not a robust solution, so it is better to store it in some more reliable and durable storage.

The problem with storing this file locally is that, in a team of multiple DevOps engineers, other engineers will not have access to a state file stored locally on your computer.

To solve this, we will need to configure a backend where the state file can be accessed remotely by other DevOps team members. There are plenty of different standard backends supported by Terraform that you can choose from. Since we are already using AWS – we can choose an __S3 bucket__ as a backend.

Another useful option that is supported by S3 backend is [State Locking](https://developer.hashicorp.com/terraform/language/state/locking) – it is used to lock your state file for all operations that could write state. This prevents others from acquiring the lock and potentially corrupting your state. State Locking feature for S3 backend is optional and requires another AWS service – [DynamoDB](https://aws.amazon.com/dynamodb).

We will be refactoring our codes to use __modules__ and move the __terraform.tfstate__ file to the __S3 bucket__ in the cloud.

__Modules__ serve as containers that allow to logically group Terraform codes for similar resources in the same domain (e.g., Compute, Networking, AMI, etc.). One __root module__ can call other child modules and insert their configurations when applying Terraform config. This concept makes the code structure neater, and it allows different team members to work on different parts of configuration at the same time.

First we create a directory named  __narbyd-project__ which will be the __root-modules__ inside the __root-module__ we create a directory named __module__. 

`$ mkdir narbyd-project && cd narbyd-project`

`$ mkdir module`

Inside the  __module__ directory, we create the directories that will hold the diiferent resources eg vpc, autoscaling group, security group, RDS, EFS etc and also the __compute__ directory.

![](./images/modulez.PNG)

Copy the files containing the resources that was created in __PROJECT-17__ into each of the folders created as related to the resources.

![](./images/1.PNG)

![](./images/22.PNG)



In the __root-module__ create a file __main.tf__ and a __provider.tf__ file.

![](./images/mp.PNG)

In the __provider.tf__ paste the following code snippet

```
provider "aws" {
  region = var.region
}
```
![](./images/prov.PNG)

NExt we will create a __vars.tf__ file in each folder in the __modules__

![](./images/ras.PNG)

