# Design Notes

## Next Steps

1. ELB Setup
   1. Create target groups - aka instances
   2. Create an LB listener which a ports for directing traffic
   3. Create Internet facing Application LB

2. CloudFront Setup
   1. Origin = ELB


## Architecture

### Blue/Green Deployments

- Utilise Cloudfront and it's ELB origin setting

### Containerisation

Simple:

```shell
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2.service    
# TODO - download from S3
echo "it works! Udagram, Udacity!" > /var/www/html/index.html 
```

Medium:
  - re-use the `app.py` example from the Kubernetes project

### CI/CD

- largely the same flow as Prelytix
  - build
  - scan & lint
  - test
  - upload
  - deploy (to EKS?)
  - smoke test with curl commands
  - promote

### Infrastructure

I'd like to copy the first project setup and cloudformation setup, but may be difficult with all the parts

- Basic Structure in order:
  - EC2 instance
  - EKS/Kubernetes cluster
  - ELB
  - Cloudfront Distribution
  
- Medium:
  - auto-scaling group
  - multi-region

- Complex:
  - private vs public subnets



