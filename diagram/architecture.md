# Architecture Diagram — AWS Static Site + CDN

## Lucid diagram

- **View:** https://lucid.app/lucidchart/289fd735-fdf5-4ec5-9f26-3073c31c8a9d/view
- **Edit:** https://lucid.app/lucidchart/289fd735-fdf5-4ec5-9f26-3073c31c8a9d/edit

## Lucid prompt (reusable)

```
Create an AWS architecture diagram titled "AWS Global Static Site + CDN".
Left to right: a Global User connects over HTTPS to CloudFront (edge locations);
CloudFront uses Origin Access Control (SigV4) to make a signed read to a private
S3 bucket origin. Label arrows HTTPS and signed-read. Clean, professional AWS colors.
```

## Mermaid source

```mermaid
flowchart LR
    User([Global User])
    CF[CloudFront Edge Locations]
    OAC[Origin Access Control SigV4]
    S3[(Private S3 Bucket Origin)]
    User -->|HTTPS| CF
    CF --> OAC
    OAC -->|signed read| S3
```
