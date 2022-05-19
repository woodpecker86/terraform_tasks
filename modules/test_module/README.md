Test module for creating EC2 and RDS

Installing nginx through userdata
Result for a test apply
```commandline
module.test_module.aws_instance.test_inst: Provisioning with 'remote-exec'...
module.test_module.aws_instance.test_inst (remote-exec): Connecting to remote host via SSH...
module.test_module.aws_instance.test_inst (remote-exec):   Host: 3.70.20.169
module.test_module.aws_instance.test_inst (remote-exec):   User: ec2-user
module.test_module.aws_instance.test_inst (remote-exec):   Password: false
module.test_module.aws_instance.test_inst (remote-exec):   Private key: true
module.test_module.aws_instance.test_inst (remote-exec):   Certificate: false
module.test_module.aws_instance.test_inst (remote-exec):   SSH Agent: false
module.test_module.aws_instance.test_inst (remote-exec):   Checking Host Key: false
module.test_module.aws_instance.test_inst (remote-exec):   Target Platform: unix
module.test_module.aws_instance.test_inst (remote-exec): Connected!
module.test_module.aws_instance.test_inst: Still creating... [50s elapsed]
module.test_module.aws_instance.test_inst: Still creating... [1m0s elapsed]
module.test_module.aws_instance.test_inst: Still creating... [1m10s elapsed]
module.test_module.aws_instance.test_inst (remote-exec): nginx version: nginx/1.20.0
module.test_module.aws_instance.test_inst: Creation complete after 1m13s [id=i-004ae5d155ae7da61]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

Outputs:

db_endpoint = "alexeev-db-tf.cyivvsklcv5h.eu-central-1.rds.amazonaws.com:3306"
instance_id = "i-004ae5d155ae7da61"
public_dns = "ec2-3-70-20-169.eu-central-1.compute.amazonaws.com"
```
The 'curl' response
```commandline
$ curl ec2-3-70-20-169.eu-central-1.compute.amazonaws.com
The page was created by the user data
```