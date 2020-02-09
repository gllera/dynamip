# dynamip
Updates your domains on Route53 DNS to match your public IP

**Requisites:**
- awscli 
```bash
# Install awscli
pip3 install awscli
# Configure it
aws configure
# Test it
aws sts get-caller-identity
```


**Usage:**

* Fill the variables on file dynamip as needed:
```bash
RECORDS='XXXXX.XXX *.XXXXXX.XXX YYYYYY.XXX'
ZONEID='ZZZZZZZZZZZ'
TTL='150'
```

* Execute it:
```bash
./dynamip
```

* btw, for example, is easier if you use it as a service configured as following:
```bash
[Unit]
Description=Updates DNS.

[Service]
Type=simple
ExecStart=/sbin/dynamip

[Install]
WantedBy=multi-user.target
```
