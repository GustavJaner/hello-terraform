# Hello Terraform

## Commands
Initialize the project, downloads the required plugins used by the tf configuaration (docker, aws..)
```
terraform init
```

Format command automatically updates configurations in the current directory for easy readability and consistency.
```
terraform fmt
```

Validate command will check and report errors within modules, attribute names, and value types.
```
terraform validate
```

Check what will happen before doing `apply`
```
terraform plan
```

Build/provision or change infrastucture/resources defined in the Terraform configuration
```
terraform apply
```


Inspect Terraform state or plan file in a human-readable form.
```
terraform show
```

The terraform destroy command terminates the resources defined in your Terraform configuration.
```
terraform destroy
```

### Docker cmds
```
docker ps
docker images

docker system prune -a   # Purging All Unused or Dangling Images, Containers, Volumes, and Networks
```

## Terraform Configs
### Providers
The provider block configures the named provider, in our case aws, which is responsible for creating and managing resources. A provider is a plugin that Terraform uses to translate the API interactions with the service

### Resources
The resource block defines a piece of infrastructure. A resource might be a physical component such as an EC2 instance, or it can be a logical resource such as a Heroku application.

The resource block has two strings before the block: the resource type and the resource name. In the example, the resource type is aws_instance and the name is example. The prefix of the type maps to the provider. In our case "aws_instance" automatically tells Terraform that it is managed by the "aws" provider.


### Provisioner
if you need to do some initial setup on your instances, then provisioners let you upload files, run shell scripts, or install and trigger other software like configuration management tools, etc.

### Input Variables
parameterize the configurations. Variable input from config files, cli input flags, or environment variables.

### Output
output stuff


## Misc.
### Structure
One Terraform project PER directory.  
Naming: all *.tf in the current directory will be compiled together (name them whatever). Decouple to several files == all configs in the same file.

### State
The state of the resources for the tf project are stored in the files: `terraform.tfstate` and `terraform.tfstate.backup`.
The state contain id and other information **Required** for tf to find and update/destroy a provisioned resource. The state files should be stored remotely to allow collaboration for tf provisioned resources.

HashiCorps TerraForm cloud can be used as a remote environment where all tf commands are executed and the state is stored and shared.

nv:
```
terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}
```