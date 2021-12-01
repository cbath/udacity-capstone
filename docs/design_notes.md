# Design Notes

## Architecture

### Blue/Green Deployments

- Utilise Cloudfront and it's ELB origin setting


### Containerisation

Simple:

```shell

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

- I'd like to copy the first project setup and cloudformation setup, but may be difficult with all the parts
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


## 

