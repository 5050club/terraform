[![SonarQube Cloud](https://sonarcloud.io/images/project_badges/sonarcloud-light.svg)](https://sonarcloud.io/summary/new_code?id=5050club_terraform)

# terraform

## install terraform on mac

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
> brew tap hashicorp/tap
> brew install hashicorp/tap/terraform

## what are we gonna use terraform for?

- k3d
- argo running in k3d?

## Local kubernetes cluster powered by k3d

This terraform module is for creating a local kubernetes cluster using k3d

## 

example usage: 
* `cp terraform.tfvars.example terraform.tfvars`
* `terraform init`
* `terraform apply`


## terraform components


- modules - https://registry.terraform.io/browse/modules
    - https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation
- workspaces
    - https://spacelift.io/blog/terraform-workspaces
- providers
    - k3d - https://github.com/SneakyBugs/terraform-provider-k3d
    - kubernetes - https://registry.terraform.io/providers/hashicorp/kubernetes/latest
    - local - https://registry.terraform.io/providers/hashicorp/local/latest
- resource
- provisioner

## terraform file structure

https://www.terraform-best-practices.com/code-structure
https://spacelift.io/blog/terraform-files


main.tf - call modules, locals, and data sources to create all resources
variables.tf - contains declarations of variables used in main.tf
outputs.tf - contains outputs from the resources created in main.tf
versions.tf - contains version requirements for Terraform and providers

terraform.tfvars should not be used anywhere except composition.

modules
|_category
|__resource

## ci

what are we going to do from a CI perspect?  what do we want to use to run security scans on it?

### sonarcube

Ok so within sonarqube (https://sonarcloud.io) on a repo, you can have "automatic analysis" turned on and then you dont need to have a github actions ci job for sonarqube.  when you create a PR to main, the sonarqube auto analysis will run and will put the results into the PR.  This is the preferred/better approach.

However, if you did want to run a GH Actions job, this is the info you need:

Instructions - 
https://github.com/marketplace/actions/official-sonarqube-scan

Create sonar-project.properties in base directory - see instuctions link for more info.

You need to create a token in sonarqube and put that into github secrets to be referenced by the GH actions job.  Note: in reality you shouldnt put the token here in the readme file but doing it for this.

SONAR_TOKEN : 8dddc4e1a58ddbad4c13c99905a43aacf4c95b26

how to reference in gh actions job:
> sonar.token : xxx

This isn't needed for sonarqube cloud, only for sonarqube server. 

SONAR_HOST_URL : https://sonarcloud.io

how to reference in gh actions job:
> sonar.host.url : xxx


install opentofu
> brew install opentofu

install atlantis

minio to store state?