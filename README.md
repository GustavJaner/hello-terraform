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
