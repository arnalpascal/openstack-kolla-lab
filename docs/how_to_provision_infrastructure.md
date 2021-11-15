# Manually

- Direct access to the machine via ssh for example
- Long execution time
- Not easy repeatable
- Not scalable
- Highly error prone
- Poor quality deployment
- Expensive in human load

# Custom scripts

- Often with "archaic" procedural language such as Shell, Bash
- Difficult to test
- Reinventing the wheel with each new feature
- Expenses in development and / or maintenance
- Non-standard development, therefore difficult to collaborate
- Very complicated to achieve a quality deployment

# Specilaized tools

- Industry standard
- Often in a simplified and declarative language (or partially) such as Yaml, Json, ...
- Offers a whole set of advanced features such as
  - automated tests with creation and destruction of on-the-fly test environments
  - idempotence
  - ...
- Fits perfectly into a CI / CD and DevOps approach
- Identical process to the development of an application, the code is the source of truth and all modifications must go through it, with merge requests and code review
- Different tools for different uses:
  - Ansible / SaltStack / Puppet / cloud-init / …
  - Terraform / Pulumi / …