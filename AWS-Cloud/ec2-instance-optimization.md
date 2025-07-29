# 🔄 EC2 Instance Optimization: xfusion-ec2 (t2.micro → t2.nano)

As part of an ongoing AWS cloud migration strategy, the Nautilus DevOps team identified underutilized resources within their EC2 fleet. One such instance, `xfusion-ec2`, was found to be over-provisioned with a `t2.micro` type despite minimal usage.

To align with resource efficiency and cost optimization practices, the instance type was downgraded to `t2.nano`.

---

## ✅ Task Summary

| Attribute         | Value                  |
|------------------|------------------------|
| **Instance Name**| `xfusion-ec2`          |
| **Old Type**     | `t2.micro`             |
| **New Type**     | `t2.nano`              |
| **Region**       | `us-east-1`            |
| **Status Check** | 2/2 Passed (before & after) |
| **State**        | Running (final state)  |

---

## 🛠️ Steps Performed

1. **Logged into AWS Console**
   - Used temporary credentials for account `637423569811`
   - Ensured region was set to `us-east-1`

2. **Located the Target Instance**
   - Searched for EC2 instance named `xfusion-ec2` in the dashboard

3. **Verified Health Checks**
   - Waited for `Status Checks` to show `2/2 passed` before proceeding

4. **Stopped the Instance**
   - Required to make changes to instance type

5. **Modified the Instance Type**
   - Changed from `t2.micro` to `t2.nano` via “Change instance type” option

6. **Restarted the Instance**
   - Verified successful boot-up and health check completion

---

## 💡 Why This Matters

Right-sizing EC2 instances ensures:
- 🔁 Efficient resource usage
- 💸 Reduced unnecessary cost
- ⚙️ Better alignment with workload demands

This is a common and necessary practice in **DevOps and FinOps** when maintaining dynamic cloud infrastructure.
---

🧠 *This was a hands-on AWS EC2 optimization task from my DevOps learning track via KodeKloud.*

