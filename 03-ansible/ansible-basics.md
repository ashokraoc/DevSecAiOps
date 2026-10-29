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

## How to Write a PLAYBOOK in Ansible

- We write Ansible playbooks in YAML lang
- ex: playbook.yaml
- start with - in yaml
- "-" means LIST in yaml/ansible

## what is a inventory file ?

- Inventory is a file or a directory that serves as a centalized catalog of the hosts (servers, network devices, etc.) that ansible manages and automates
- *** Key Components
    1. Hosts
    2. Groups
    3. Variables

## Inventory Types

- --> Ansible supports two Primary types of inventories
    1. Static Inventory
    2. Dynamic Inventory
- ex: inventory.ini

## 1. Host
A host is any server that ansible manages
- It can be
    1. IP address # 192.31.21.1
    2. Hostname # web-server/db server
    3. DNS name

Example Inventory: (if this kind (not grouped into any) is call as orphan inventory)
- 172.21.31.205
- 172.21.31.206

## 2. Host Variables
    Host variables are settings specific to a single host
- Example:
    172.31.21.205 ansible_user=ec2-user ansible_password=<ssh-passwd> ansible_port=<ssh-port> ansible_ssh_private_file_key=<ssh-keys(.pem)>

## 3. Groups
- Hosts can be organised into groups, so Grops make automation much easier
[web]
- 172.19.30.205
- 172.20.31.206
[db]
- 172.21.32.205
- 172.22.33.206

Example run a command:
- ansible web -m ping

## 4. Group Variable
[web]
- 172.19.30.205
- 172.20.31.206
[db]
- 172.21.32.207
- 172.22.33.208
[backend]
- 172.23.34.209
- 172.24.35.210

[roboshop:children]
web
backend
db

[web:vars]
ansible_user=ec2-user
ansible_port=22

*** so every web server uses ec2-user automatically. ***