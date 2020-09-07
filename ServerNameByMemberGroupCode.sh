#!/bin/bash
aws ec2 describe-instances --output text --query "Reservations[*].Instances[*].[Tags[*]]" --filters "Name=tag:membergroupcode,Values=usea1rpfs10a005"  | grep Name