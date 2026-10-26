# Ansible – Configuration Management Tool

## 1. What is Ansible?

Ansible is an **open-source, agentless IT automation tool** used for configuration management, application deployment, infrastructure provisioning, and orchestration.

It automates repetitive tasks such as software installation, server updates, user management, and network configuration.

Ansible uses **YAML-based playbooks** to define the tasks to be performed on managed nodes. It typically connects to Linux managed nodes using SSH.

## 2. Why Do We Use Ansible?

Ansible helps DevOps engineers automate repetitive tasks and manage multiple servers efficiently.

Examples:

- Installing software on multiple servers.
- Creating users and managing permissions.
- Configuring servers.
- Deploying applications.
- Starting, stopping, and restarting services.
- Applying consistent configurations across servers.

## 3. Key Features of Ansible

| Feature | Description |
|---|---|
| Open-source | Freely available automation tool. |
| Agentless | Does not require an Ansible agent on managed nodes. |
| YAML-based | Uses YAML syntax to write playbooks. |
| SSH connectivity | Typically uses SSH to connect to Linux managed nodes. |
| Idempotency | Repeated execution generally avoids unnecessary changes when the desired state is already achieved. |
| Automation | Automates repetitive IT tasks. |

## 4. Ansible Architecture

Ansible works using the following components:

| Component | Description |
|---|---|
| Control Node | The machine where Ansible is installed and executed. |
| Managed Node | A remote machine managed by Ansible. |
| Inventory | A file containing the list of managed hosts. |
| Playbook | A YAML file that defines the automation tasks. |
| Module | A unit of code used to perform a specific task. |
| Task | An individual action to perform on a managed node. |

### Basic Workflow

1. Install Ansible on the control node.
2. Add managed nodes to the inventory file.
3. Configure SSH connectivity.
4. Write a playbook using YAML.
5. Execute the playbook.
6. Ansible connects to the managed nodes and performs the tasks.

## 5. Common Use Cases

- Configuration Management
- Application Deployment
- Infrastructure Provisioning
- User and Permission Management
- Software Package Installation
- Service Management
- Orchestration

## 6. Important Points to Remember

- Ansible is an automation tool.
- It is agentless.
- Linux managed nodes are typically accessed through SSH.
- Playbooks are written in YAML.
- Inventory defines the managed hosts.
- Modules perform specific operations.
- Idempotency helps maintain the desired system state.