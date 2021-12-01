# Design Notes

## Architecture

### Blue/Green Deployments

- Utilise Cloudfront and it's ELB origin setting


### Containerisation

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
- Basic Structure:
  - Cloudfront Distribution
  - ELB
  - EC2 instance/EKS cluster?
- Medium:
  - auto-scaling group
- Complex:
  - private vs public subnets


## 

