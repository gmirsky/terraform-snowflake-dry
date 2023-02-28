# Provision Snowflake with DRY (Don't Repeat Yourself) Terraform 

## NOTICE! 

**DO NOT USE!**  

Work on this project has been halted since the Snowflake provider gives inconsistent results between the AWS and Azure clouds.

## Objective

This educational repository will illustrate the use of advanced Terraform options to provision Snowflake cloud based databases, schemas, et cetera.

### Keep DRY

The Terraform code in this repository uses `for_each` loops to drive generic Terraform resource statements to create multiple databases along with their subordinate objects like schemas and grants. The intent is to develop DRY (Don't Repeat Yourself) Terraform to provision Snowflake objects.

### Code Structure

The Terraform statements are broken out into their own self explanatory named files for ease of the reader to examine the code and how it functions. Each Terraform resource resides in its own file and has a corresponding `*.auto.tfvars` file supplying the data that the Terraform resources requires to operate. This allows the Terraform developer to easily find the resource statement and the associated statements easily when debugging since the error messages will always state the offending resource name. This is a technique learned from coding many multi-cloud Terraform deployments.

It is the aim of this repository to keep the Terraform code as static as possible and use the accompanying `tfvars` files to make the changes to assets that the reader wishes to provision or change.

This repository makes use of the `depends_upon` statement since the code is data driven and Terraform does not know the order of operation for deployment because resource statements do not reference each other.  

As mentioned before, each Terraform resource is driven by a  `for_each` loop.

Each resource statement is tied to a Terraform provider so that the proper Snowflake role is invoked when executed.

 Finally, in the file `snowflake_procedure.tf` the reader can examine how a nested dynamic statement is created inside a `for_each` loop to build the proper resource request. Generally, most Snowflake Terraform statements can be built using just a `for_each` loop to build the proper resource.

### What does it build?

The tfvars files in this repository is configured to build three databases, that contain three schemas along with a warehouse for database. Additionally, a procedure is configured in first schema of each database.

### Why use Terraform ?

With the Terraform Snowflake provider being officially taken over from the Chan Zuckerberg Foundation by Snowflake (Snowflake Labs), Snowflake is officially supporting Terraform over SchemaChange (formerly Snowchange). Both Terraform and SchemaChange have thier places in the deployment and change management pipelines but expect a shift towards Terraform.

Terraform is great for everything down to the table level at this point of time. Due to the way Snowflake handles Terraform initiated changes to tables there may be data loss. This is being improved upon as the Snowflake Terraform provider is developed for end-to-end provisioning.

SchemaChange does has its drawbacks that make Terraformed Snowflake attractive. With SchemaChange:

1. Idempotency isn’t a given.
2. Logic is often spread across different migration scripts.
3. Reusability of the code isn’t built in and highly dependent upon the developer.
4. You have to build tooling on top of SchemaChange for it to be user friendly
5. Validation has to be done explicitly; it is not built into the tool.
6. Code is procedural whereas Terraform is declarative.

## Optional Prerequisites

Install Docker on your machine if you wish to run the Terraform code scanners Checkov and Tfsec to check for vulnerabilities in your Terraform code. You can also directly install Checkov and Tfsec on your system, if you wish. 

Using the docker containers, saves you the headaches of Python version mismatches or having to use virtual environments.

## Mandatory Prerequisites

Provision a Snowflake user id (in the below sample we use the user **terraform**) that does not use MFA (multi factor authentication).  The Snowflake user id should have the following Snowflake roles granted to it:

- SYSADMIN
- ACCOUNTADMIN
- SECURITYADMIN
- USERADMIN

Additionally, make sure that the above roles have access to operate the Snowflake Warehouse specified in the commands below.

### PowerShell

Open up a PowerShell dialog and navigate to where you have cloned this repository. PowerShell is available on nearly all platforms.

Modify the following commands to reflect the proper information for your environment and then run them in the PowerShell dialog.

The account and region can be derived from the URL that you use to log into Snowflake.

```powershell
$env:SNOWFLAKE_ACCOUNT = 'xyz1234'
$env:SNOWFLAKE_USER = 'terraform'
$env:SNOWFLAKE_REGION = 'us-east-1'
$env:SNOWFLAKE_WAREHOUSE = 'dba_wh'
$env:SNOWFLAKE_PASSWORD = 'MyP@s$w0rd!'
```

Verify that your PowerShell environment has the correct values set by using the command `dir env:SNOWFLAKE*`

```powershell
dir env:SNOWFLAKE*

Name                           Value
----                           -----
SNOWFLAKE_ACCOUNT              xyz1234
SNOWFLAKE_PASSWORD             MyP@s$w0rd!
SNOWFLAKE_USER                 terraform
SNOWFLAKE_REGION               us-east-1
SNOWFLAKE_WAREHOUSE            dba_wh
```

### Shell

If you are using Bash or Z-shell then you can use the following commands instead.

```bash
export SNOWFLAKE_ACCOUNT='xyz1234'
export SNOWFLAKE_USER='terraform'
export SNOWFLAKE_REGION='us-east-1'
export SNOWFLAKE_WAREHOUSE='dba_wh'
export SNOWFLAKE_PASSWORD='MyP@s$w0rd!'
```

Verify that your environment has the correct values set by using the command `env | grep SNOW`

```bash
% env | grep SNOW
SNOWFLAKE_ACCOUNT=xyz1234
SNOWFLAKE_USER=terraform
SNOWFLAKE_REGION=us-east-1
SNOWFLAKE_WAREHOUSE=dba_wh
SNOWFLAKE_PASSWORD=MyP@s$w0rd!
```

## Code Scanning

The following assumes that you have docker up and running on your system otherwise please refer to the installation and execution instructions for [Checkov](https://github.com/bridgecrewio/checkov) and [Tfsec](https://github.com/aquasecurity/tfsec)

I highly recommend using a code scanner even during your Terraform development process to keep your code secure and not having to go back and remediate security issues.

### Checkov

Use the following commands to scan the Terraform code for vulnerabilities in your PowerShell dialog using the latest Checkov container.

```powershell
docker pull bridgecrew/checkov:latest
docker run --tty --rm --volume "$(pwd):/tf" --workdir /tf bridgecrew/checkov:latest --directory /tf --download-external-modules true
```

You should get output like this (hopefully!)

```powershell
docker run --tty --rm --volume "$(pwd):/tf" --workdir /tf bridgecrew/checkov:latest --directory /tf --download-external-modules truedirectory /tf --download-external-modules true

       _               _
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V /
  \___|_| |_|\___|\___|_|\_\___/ \_/

By bridgecrew.io | version: 2.2.254

terraform scan results:

Passed checks: 1, Failed checks: 0, Skipped checks: 0

Check: CKV_AWS_41: "Ensure no hard coded AWS access key and secret key exists in provider"
        PASSED for resource: aws.default
        File: /provider.tf:21-30
        Guide: https://docs.bridgecrew.io/docs/bc_aws_secrets_5
```

### Tfsec

Use the following commands to scan the Terraform code for vulnerabilities in your PowerShell dialog using the latest Tfsec container.

```powershell
docker pull aquasec/tfsec:latest
docker run --rm -it -v "$(pwd):/src" aquasec/tfsec:latest --tfvars-file /src/terraform.tfvars /src
```

You should get output like this (hopefully!)

```powershell
docker run --rm -it -v "$(pwd):/src" aquasec/tfsec:latest --tfvars-file /src/terraform.tfvars /src
  timings/terraform.tfvars /src
  ──────────────────────────────────────────
  disk i/o             169.3991ms
  parsing              52.6515ms
  adaptation           5.03ms
  checks               9.5893ms
  total                236.6699ms

  counts
  ──────────────────────────────────────────
  modules downloaded   0
  modules processed    2
  blocks processed     58
  files read           22

  results
  ──────────────────────────────────────────
  passed               2
  ignored              0
  critical             0
  high                 0
  medium               0
  low                  0


No problems detected!
```

## Terraform

Now, you can execute the Terraform commands to build the resources.

### Terraform version check

Check the version of your Terraform software by using this command: `terraform --version`

If you are out of date you will see a message like this along with the URL to download the latest version of Terraform.

```powershell
terraform --version
Terraform v1.3.6
on windows_amd64
+ provider registry.terraform.io/hashicorp/aws v4.49.0
+ provider registry.terraform.io/hashicorp/template v2.2.0
+ provider registry.terraform.io/snowflake-labs/snowflake v0.54.0

Your version of Terraform is out of date! The latest version
is 1.3.7. You can update by downloading from https://www.terraform.io/downloads.html
```

### Verify Snowflake provider version

Navigate to this [webpage](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest) to check the Snowflake provider version. The Snowflake provider is frequently updated so it is important that you use the latest verision. The version can be updated in the `terraform.tf` file.

```json
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.54.0"
    }
```

### terraform init

If you are using the backend AWS S3 bucket to store the tfstate file use this command.

```powershell
terraform init -reconfigure -upgrade -backend-config="terraform.tfbackend"
```

If you are using a local Terraform tfstate file, use this command (after commenting out the AWS related code.)

```powershell
terraform init -reconfigure -upgrade 
```

### terraform fmt (optional)

Use the following command to format all the Terraform code. This step is usually not needed but I find the error messages generated from the terraform fmt command to be a little more descriptive than those of terraform validate. (This may change from Terraform version to version.)

### terraform validate

Use the following command to verify your Terraform code and tfvars entries.

```powershell
terraform validate
```

### terraform plan

Use the following command to build a Terraform plan that can be executed against the Snowflake account to build the assets you have coded in Terraform and the tfvars files.

```powershell
terraform plan -out=tfplan
```

### terraform apply

To execute the Terraform plan and to build the assets use the following command.

```powershell
terraform apply "tfplan"
```

### terraform destroy

To roll back and destroy everything you created use this command.

```powershell
terraform destroy
```
