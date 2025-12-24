## Key Learnings

### AWS Networking & VPC Design
- Understood how a VPC acts as an isolated network environment in AWS.
- Learned the difference between public and private subnets and how routing
  determines internet accessibility.
- Gained hands-on experience with Internet Gateways and NAT Gateways and
  their roles in inbound and outbound traffic flow.

### Security Best Practices
- Learned why application servers should be placed in private subnets
  to reduce attack surface.
- Implemented security groups that restrict SSH access to private EC2
  instances via a bastion host only.
- Understood that security group rules alone cannot expose private instances
  without proper routing and public IPs.

### Accessing Private Resources
- Practiced secure administrative access to private EC2 instances using
  a bastion host in a public subnet.
- Learned how SSH traffic flows internally within a VPC and why direct
  SSH access from the internet to private subnets is not possible.

### Application Deployment
- Deployed a simple web application by serving a static `index.html`
  file using Python’s built-in HTTP server.
- Used this lightweight setup to validate infrastructure, routing,
  and connectivity without focusing on application complexity.

### Troubleshooting & Problem Solving
- Diagnosed SSH connectivity issues related to subnet routing, security groups,
  and missing SSH keys.
- Learned the importance of verifying route tables and network paths
  when connectivity problems occur.
- Understood common AWS errors such as connection timeouts and
  permission denied issues and how to resolve them.

### Cloud Cost Awareness
- Learned that resources such as NAT Gateways and Elastic IPs incur
  continuous costs when left running.
- Practiced proper resource cleanup by deleting all AWS resources
  after completing the project to avoid unnecessary charges.

### Overall Takeaway
- Gained a strong understanding of how production-grade AWS infrastructure
  is designed, secured, and maintained.
- Developed confidence in explaining AWS networking and security concepts
  with practical, hands-on experience.
