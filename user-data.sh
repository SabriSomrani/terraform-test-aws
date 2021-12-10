#!/bin/bash
yum update -y
yum -y install git
pip3 install fastapi[all] boto3 pydantic
git clone https://github.com/SabriSomrani/python-aws.git
cd /python-aws
/usr/local/bin/uvicorn main:app --host 0.0.0.0 --port 8000
