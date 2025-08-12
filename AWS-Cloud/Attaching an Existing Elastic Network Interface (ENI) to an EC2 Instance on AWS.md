# Attaching an Existing Elastic Network Interface (ENI) to an EC2 Instance on AWS

## Task Overview
This guide explains how to attach an existing Elastic Network Interface (**ENI**) named `xfusion-eni` to an existing EC2 instance named `xfusion-ec2` in the **us-east-1** region.  
The goal is to ensure the ENI is **attached** and the instance has **finished initialization (2/2 checks passed)**.

---

## Prerequisites
- Access to AWS Management Console or AWS CLI.
- AWS credentials for the lab environment (`showcreds` command on `aws-client` host).
- The `xfusion-ec2` instance and `xfusion-eni` ENI already exist in **us-east-1**.
- ENI and EC2 instance **must** be in the same **Availability Zone (AZ)**.

---

## Step-by-Step Instructions

### 1. Verify Instance Status
1. Sign in to the [AWS Console](https://058264284181.signin.aws.amazon.com/console?region=us-east-1) with the provided credentials.
2. Go to **EC2 → Instances** and select **`xfusion-ec2`**.
3. Confirm:
   - **Instance state**: Running
   - **Status checks**: 2/2 checks passed (initialization complete)
   - Note the **Availability Zone** (e.g., `us-east-1a`).

---

### 2. Verify ENI Availability
1. Go to **EC2 → Network Interfaces**.
2. Find **`xfusion-eni`** and confirm:
   - **Status**: Available
   - **Availability Zone** matches the instance's AZ.
   - Security groups are correct for your use case.

---

### 3. Attach ENI to the Instance (Console)
1. Select **`xfusion-eni`**.
2. Click **Actions → Attach network interface**.
3. Choose:
   - **Instance**: `xfusion-ec2`
   - **Device index**: `1` (this will be `eth1` inside the instance)
4. Click **Attach**.

---

### 4. Attach ENI to the Instance (CLI)
Run on the `aws-client` host after `showcreds`:
```bash
# Load credentials and set region
eval "$(showcreds)"
export AWS_REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1

# Get instance ID
IID=$(aws ec2 describe-instances \
  --filters "Name=tag:Name,Values=xfusion-ec2" \
  --query "Reservations[].Instances[].InstanceId" \
  --output text)

# Get ENI ID
ENI_ID=$(aws ec2 describe-network-interfaces \
  --filters "Name=tag:Name,Values=xfusion-eni" \
  --query "NetworkInterfaces[0].NetworkInterfaceId" \
  --output text)

# Attach ENI
aws ec2 attach-network-interface \
  --network-interface-id "$ENI_ID" \
  --instance-id "$IID" \
  --device-index 1

# Verify attachment
aws ec2 describe-network-interfaces \
  --network-interface-ids "$ENI_ID" \
  --query "NetworkInterfaces[0].{Status:Status,AttachmentStatus:Attachment.Status,DeviceIndex:Attachment.DeviceIndex,Instance:Attachment.InstanceId}" \
  --output table
