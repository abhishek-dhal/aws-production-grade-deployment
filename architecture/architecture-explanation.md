## Architecture Explanation

## Architecture Overview

This project demonstrates the design and implementation of a production-grade
AWS Virtual Private Cloud (VPC) architecture suitable for real-world applications.

### High Availability and Resiliency
To improve resiliency and fault tolerance, the application is deployed across
two Availability Zones using an Auto Scaling Group and an Application Load Balancer.

### Network Design
- A VPC is created with both public and private subnets in two Availability Zones.
- Public subnets host internet-facing components such as the Application Load Balancer
  and NAT Gateways.
- Private subnets host EC2 instances to prevent direct internet access.

### Traffic Flow
- Incoming user requests from the internet reach the Application Load Balancer
  deployed across public subnets.
- The Load Balancer forwards traffic to EC2 instances running in private subnets.
- EC2 instances do not have public IP addresses and are accessible only through the Load Balancer.

### Outbound Internet Access
- EC2 instances in private subnets access the internet for updates and package
  installations using NAT Gateways.
- NAT Gateways are deployed in public subnets, typically one per Availability Zone,
  to ensure high availability.

This architecture follows AWS best practices for security, scalability,
and high availability in production environments.
