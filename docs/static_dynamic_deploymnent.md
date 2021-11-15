# Ansible deployment

- Provisioning with tools such as Ansible / SaltStack / …
- Manages deployment, installation and configuration of applications
- Identical deployment in all environments from a code base
- "Mutable" infrastructure
- Automated tests with integrated frameworks (Molecule, KitchenCI, ...) to verify behavior, idempotence, ...
- No full lifecycle management, for example remove a resource is not automatic

# Terraform deployment

- Provisioning with tools such as Terraform / Pulumi / …
- Manages the full dynamic data lifecycle of systems such as:
  - VM instances in an IaaS cloud
  - Network configurations in an IaaS cloud
  - ...
  - Configuration of tools for example LDAP, Firewall, Vault, Gitlab, ...
  - https://registry.terraform.io/
- Automated testing with integrated frameworks (Terratest, kitchen-terraform, ...) possible
- Often associated with an immutable environment