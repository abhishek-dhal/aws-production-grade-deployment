## VPC Setup

This section documents the creation and configuration of the Virtual Private Cloud (VPC)
used in this project, following AWS production best practices.

### VPC Creation
- Created a dedicated VPC using the **“VPC and more”** wizard.
- Assigned an IPv4 CIDR block of **10.0.0.0/16** to allow sufficient IP address space.
- Enabled DNS resolution and DNS hostnames for internal service communication.

### Subnet Configuration
- Created **four subnets** distributed across **two Availability Zones**:
  - **Two public subnets** for internet-facing components.
  - **Two private subnets** for application servers.
- Each subnet is associated with a single Availability Zone to ensure fault isolation
  and high availability.

### Internet Gateway
- An **Internet Gateway (IGW)** was automatically created and attached to the VPC.
- The IGW enables inbound and outbound internet traffic for resources placed
  in public subnets.

### NAT Gateway
- Deployed **one NAT Gateway per Availability Zone** inside the public subnets.
- NAT Gateways allow instances in private subnets to access the internet securely
  without exposing them to inbound traffic.

### Route Tables
- Configured separate route tables for public and private subnets:
  - **Public route table** routes `0.0.0.0/0` traffic to the Internet Gateway.
  - **Private route table** routes `0.0.0.0/0` traffic to the NAT Gateway.
- Associated public subnets with the public route table and private subnets
  with the private route table.

### Outcome
- Public subnets host internet-facing resources such as the bastion host
  and load balancer.
- Private subnets host application EC2 instances with no direct internet access.
- This setup ensures **security, scalability, and high availability** in a
  production-like environment.
