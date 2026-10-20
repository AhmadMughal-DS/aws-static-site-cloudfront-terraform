# AWS Global Static Site + CDN (Terraform)

> Secure, globally cached static website — private S3 origin behind CloudFront with Origin Access Control — provisioned with Terraform.
> **Author:** Muhammad Ahmad · **IaC:** Terraform · **Cloud:** AWS

![Terraform](https://img.shields.io/badge/Terraform-1.5%2B-7B42BC?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-S3%20%7C%20CloudFront%20%7C%20OAC-FF9900?logo=amazonaws&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📌 Overview

- **S3 bucket** stays **fully private** — no public access, no website hosting endpoint.
- **CloudFront** serves the content globally over **HTTPS**, caching at edge locations.
- **Origin Access Control (OAC + SigV4)** means only this CloudFront distribution can read the bucket.
- Sample `index.html` / `error.html` are uploaded by Terraform so the site works immediately.

## 🏗️ Architecture

```mermaid
flowchart LR
    User([Global User])
    CF[CloudFront<br/>Edge Locations]
    OAC[Origin Access Control<br/>SigV4]
    S3[(Private S3 Bucket<br/>Origin)]

    User -->|HTTPS| CF
    CF --> OAC
    OAC -->|signed read| S3
```

## 🚀 Deploy

```bash
cd terraform
terraform init
terraform apply
```

CloudFront takes a few minutes to deploy. Then open the URL:

```bash
terraform output cloudfront_url
```

## 🧹 Clean up

```bash
terraform destroy
```

## 💰 Cost note

S3 storage for a few HTML files is negligible, and CloudFront has a generous free tier. Idle cost is near **$0**.

## 🔐 Production hardening (next steps)

- Add a **custom domain** with Route 53 + an **ACM certificate** (in `us-east-1`).
- Add a **CloudFront response headers policy** (HSTS, CSP).
- Add **CI/CD** to sync build output and invalidate the cache on deploy.

---

*Built and maintained by **Muhammad Ahmad**.*
