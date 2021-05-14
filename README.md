# Terraform tutorial
Beginer to Advancer

## Find AMIs

```bash
https://cloud-images.ubuntu.com/locator/ec2/
```

## How to use terraform

```bash
# download library
terraform init

# create an instances
terraform apply

# terminate instances
terraform destroy

# show plan

terraform plan

terraform plan -out filename.terraform

# apply specify file

terraform apply filename.terraform

```

# How to update file

```bash
provisioner "file" {
    source = "app.conf"
    destination = "/etc/myapp.conf"
    connection {
        user = var.instance_username
        password = var.instance_password
    }
}
```