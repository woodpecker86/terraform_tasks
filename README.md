### Terraform practice

Output of my first manifest
```commandline
Outputs:

sec_groups = [
  "eks-cluster-sg-nr-diploma-1542063527",
  "eks-cluster-sg-eks_ums_cluster1-2111688397",
  "epam-world",
  "customer",
  "epam-europe",
  "epam-by-ru",
  "default",
]
subnets = tolist([
  "subnet-18068254",
  "subnet-dc4a30b6",
  "subnet-2965d455",
])
vpcs = tolist([
  "vpc-6c6dfe06",
])
```

Output after the second task
```commandline
Outputs:

instance_id = "i-004ae5d155ae7da61"
public_dns = "ec2-3-70-20-169.eu-central-1.compute.amazonaws.com"
sec_groups = [
  "eks-cluster-sg-nr-diploma-1542063527",
  "eks-cluster-sg-eks_ums_cluster1-2111688397",
  "epam-world",
  "customer",
  "epam-europe",
  "epam-by-ru",
  "default",
]
subnets = tolist([
  "subnet-18068254",
  "subnet-dc4a30b6",
  "subnet-2965d455",
])
vpcs = tolist([
  "vpc-6c6dfe06",
])

```