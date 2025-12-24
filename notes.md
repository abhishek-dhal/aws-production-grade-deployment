## Working Notes

### Initial Setup
- Followed a tutorial as reference but implemented the setup using the current AWS console.
- Noted that AWS UI and defaults have changed compared to older tutorials.
- Used the **VPC and more** wizard for faster networking setup and verified all resources manually.

### VPC & Networking
- Created a VPC with public and private subnets across two Availability Zones.
- Verified route tables to ensure:
  - Public subnets route traffic to the Internet Gateway.
  - Private subnets route outbound traffic through the NAT Gateway.
- Observed that NAT Gateways and Elastic IPs incur costs and should not be left running unnecessarily.

### EC2 Deployment
- Launched EC2 instances in private subnets with no public IP assigned.
- Confirmed that direct SSH access from the internet to private EC2 instances is not possible.
- Learned that security group rules alone cannot expose private EC2 instances without proper routing.

### Bastion Host Access
- Created a bastion host in a public subnet to enable secure SSH access to private EC2 instances.
- Initially attempted to SSH directly to private EC2 and received connection timeout errors.
- Resolved SSH access by:
  - Restricting SSH access to the bastion host only.
  - Allowing SSH from the bastion security group to the private EC2 security group.
  - Copying the SSH key to the bastion host using MobaXterm drag-and-drop.

### Application Setup
- Created a simple `index.html` file on the private EC2 instance.
- Served the application using Python’s built-in HTTP server.
- Used this setup to validate networking, routing, and access control rather than application complexity.

### Troubleshooting
- Encountered permission denied and connection timeout errors during SSH setup.
- Learned the importance of:
  - Correct SSH key placement and permissions (`chmod 400`).
  - Using private IP addresses when connecting inside the VPC.
  - Verifying security group sources (security group vs IP).

### Cleanup
- Deleted all AWS resources after completing the project.
- Ensured NAT Gateways, Elastic IPs, EC2 instances, and the VPC were fully removed to avoid charges.
