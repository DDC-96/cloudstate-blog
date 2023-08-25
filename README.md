# cloudstate-blog 

## OVERVIEW 
In this project, the goal is to deploy an application stack on AWS cloud using Terraform as Infrastructure as Code (IaC). The purpose of this deployment is to manage the state of the environment efficiently, simplifying both initialization and destruction processes. The infrastructure includes a secure and scalable approach by using a VPC (Virtual Private Cloud) network spanning three Availability Zones associated components private/public subnets, route tables, load balancer for target groups and a RDS mySql database in a private subnet along with a bastion host and security groups for secure server access to host my application. Additionally, I deploy my environment using AWS Elastic Beanstalk for streamlined management, while also intergrating Maven for building and uploading my artifact into AWS. 

## Expierience 
Cloudstate-blog was all about diving into AWS and getting hands-on with automation / Terraform's Infrastructure as Code (IaC). 

## Architecture
The deployment involves utilizing these AWS services to construct the application stack:
- **AWS Elastic Beanstalk:** For deploying web applications and services
- **Amazon MQ:** Managed message broker service
- **AWS ElastiCache:** Caching service for improving application performance
- **AWS RDS (MySQL):** Managed relational database service
- **EC2:** Ubuntu server for cloudstate application
- **S3:** Object storage service (Terraform state)
- **BastionHost:** Serve as a private server that holds my mySQL dbscript   

## Prerequisites
ensure you have the following prerequisites in place:
- **AWS Account:** You need an active AWS account to deploy resources.
- **IAM User Credentials:** Set up an IAM user with appropriate permissions and obtain its access keys.
- **Terraform v1.5.5:** Install Terraform on your development machine. You can find installation instructions in the Terraform documentation. I used Terraform locally (Mac)
- **AWS CLI:** Install the AWS Command Line Interface to interact with AWS services.
- **IDE (e.g., VS Code):** Choose an integrated development environment to work on your Terraform scripts.
- **Maven:** Utilized for packagin my webapp resources .war.
- **Apache HTTP Server:** Used to serve the artifact to AWS Elastic Beanstalk.

## Getting Started
1. **Clone the Repository:** `git clone <repository-url>` to get a local copy of the project.
2. **AWS Configuration:** Configure your AWS CLI with the IAM user credentials using `aws configure`.
3. **Terraform Initialization:** Navigate to the project directory and run `terraform init` to initialize Terraform.
4. **Modify Variables:** Open the relevant `.tf` files and update variables such as VPC configuration, subnets, providers,regions and other resources.
5. **Deploy Infrastructure:** Run `terraform apply` to create the defined resources on AWS.

## Deploying the Application
1. **Build Artifact:** Use Maven to build your application artifact.
2. **Configure Apache:** Set up Apache HTTP Server to serve the artifact.
3. **AWS Elastic Beanstalk:** Configure your Elastic Beanstalk environment to deploy your artifact from the Apache server.






