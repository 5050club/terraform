[![SonarQube Cloud](https://sonarcloud.io/images/project_badges/sonarcloud-light.svg)](https://sonarcloud.io/summary/new_code?id=5050club_terraform)

# terraform

## install terraform on mac

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
> brew tap hashicorp/tap
> brew install hashicorp/tap/terraform

## what are we gonna use terraform for?

- k3d
- ?

## Local kubernetes cluster powered by k3d

This terraform module is for creating a local kubernetes cluster using k3d

## 

example usage: 
* `cp terraform.tfvars.example terraform.tfvars`
* `terraform init`
* `terraform apply`

## ci

what are we going to do from a CI perspect?  what do we want to use to run security scans on it?

### sonarcube config items

Instructions - 
https://github.com/marketplace/actions/official-sonarqube-scan

create sonar-project.properties in base directory

SONAR_TOKEN : 8dddc4e1a58ddbad4c13c99905a43aacf4c95b26

how to reference in gh actions:
> sonar.token : xxx

SONAR_HOST_URL : https://sonarcloud.io

how to reference in gh actions:
> sonar.host.url : xxx