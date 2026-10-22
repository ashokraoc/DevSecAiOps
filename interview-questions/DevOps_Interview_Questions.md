# DevOps Interview Questions

> Interview preparation cheat sheet converted from the provided PDF into Markdown for GitHub.

## 1. What are the types of Docker volumes?

**Answer:**

Docker provides three types of volumes:

1. **Host volume** – Maps a directory from the host machine to the container.
2. **Anonymous volume** – Docker manages the volume without a specific name.
3. **Named volume** – User-defined and persisted independently of containers.

## 2. What are Kubernetes taints and tolerations?

**Answer:**

- **Taint** is applied on a node to restrict pod scheduling.
- **Toleration** is applied on pods to allow them to run on tainted nodes.

They are used to isolate workloads, for example, to run only specific apps on specific nodes.

## 3. How do you add an existing resource to the Terraform state file?

**Answer:**

Use the command:

```bash
terraform import <resource_address> <resource_id>
```

## 4. Can pod-to-pod communication happen by default?

**Answer:**

Yes. In Kubernetes, all pods can communicate with each other by default within the cluster because the cluster network is flat and non-restrictive unless Network Policies restrict it.

## 5. What are Helm charts?

**Answer:**

A Helm chart is a package of YAML templates used to deploy Kubernetes applications through versioned, repeatable, and configurable deployments.

## 6. How will you deploy Jenkins in your organization?

**Answer:**

Four common approaches:

1. EC2 installation (manual setup)
2. Docker container
3. Helm chart deployment on EKS
4. Kubernetes YAML manifests

## 7. When you deploy Jenkins with Helm, what is the folder structure?

**Answer:**

A Helm chart typically includes:

```text
Chart.yaml
values.yaml
templates/
    deployment.yaml
    service.yaml
    ingress.yaml
    configmap.yaml
    pvc.yaml
charts/
README.md
```

## 8. How much time will be taken for a Jenkins job to complete?

**Answer:**

It depends on pipeline stages, application build time, tests, and infrastructure speed. Typically, it ranges from 1 minute to 15+ minutes depending on the complexity.

## 9. Where do you deploy microservices?

**Answer:**

Usually deployed in:

- Kubernetes (EKS)
- Docker containers
- ECS
- EC2
- Fargate

## 10. Who manages the infrastructure in your organization?

**Answer:**

Infrastructure is usually managed by the DevOps team using Infrastructure as Code (IaC) tools like Terraform, CloudFormation, and Ansible.

## 11. An application is deployed in EKS but is not accessible externally. How will you debug?

**Steps:**

1. Check the Service type (LoadBalancer / NodePort).
2. Check the Ingress configuration.
3. Check Security Group inbound rules.
4. Check NACLs / VPC routing.
5. Check DNS mapping.
6. Check whether pods are running and service endpoints exist.

## 12. Explain the Git branching strategy.

**Answer:**

The source lists Gitflow as a common strategy:

- `main` / `master` → Stable production
- `develop` → Active development
- `feature/` → New features
- `release/` → Pre-production
- `hotfix/` → Quick patches on production

## 13. How can you restrict pod-to-pod communication?

**Answer:**

Use Kubernetes NetworkPolicies:

- Deny all traffic
- Allow only specific namespaces, apps, or labels

## 14. Suppose a Jenkins pipeline fails. How will you debug it?

- Check console output.
- Check agent availability.
- Validate credentials.
- Check Docker build errors.
- Check Git authentication.
- Check stage-specific errors.

## 15. How does communication happen in an EKS cluster?

**Answer:**

Through:

- Kubernetes network (CNI plugin)
- Service (`ClusterIP` / `NodePort` / `LoadBalancer`)
- CoreDNS
- VPC routing

## 16. Write a Python program to read a log file and print the error count.

```python
count = 0
with open("app.log", "r") as f:
    for line in f:
        if "ERROR" in line:
            count += 1

print("Total ERROR messages:", count)
```

## 17. What type of agents are you using in Jenkins?

- Static EC2 agents
- Dynamic agents via Kubernetes plugin
- Docker agents
- Self-hosted runners

## 18. How are you deploying Jenkins: EC2 or EKS?

**Answer:**

It depends on the organization, but the source gives EKS with Helm as a common approach for scalability.

## 19. What is the difference between StatefulSet and Deployment?

**Deployment:**

- Stateless apps
- No stable identity
- Replica pods are identical

**StatefulSet:**

- Stateful apps (DB, Kafka)
- Stable network identity
- Persistent storage per pod

## 20. Explain RBAC in Kubernetes.

RBAC means **Role-Based Access Control**. It controls who can access what using:

- Roles
- ClusterRoles
- RoleBindings
- ClusterRoleBindings

## 21. Jenkins is deployed via Helm. How do you update plugins?

Two ways:

1. Update `values.yaml` with the plugin list.
2. Upgrade the chart:

```bash
helm upgrade jenkins -f values.yaml jenkins/jenkins
```

## 22. How do you store secrets in Kubernetes?

Using:

- Kubernetes Secrets (Base64 encoded)
- AWS Secrets Manager + CSI driver
- HashiCorp Vault

## 23. You lost the Jenkins password. How do you restore it?

- If using Helm, the source suggests checking the initial admin password:

```bash
kubectl exec -it <pod> -- cat /var/jenkins_home/secrets/initialAdminPassword
```

- Reset via an admin account.
- Restore a backup, if one was taken.

## 24. What plugins do you use in Jenkins?

Common ones listed in the source:

- Git
- Pipeline
- Credentials
- Blue Ocean
- Docker
- Kubernetes
- Slack
- SonarQube

## 25. How many DevOps engineers are in your team?

**Typical answer:**

4–6 DevOps engineers, depending on project size.

## 26. What is your project architecture?

A high-level answer from the source:

- Microservices in EKS
- CI/CD via Jenkins / GitHub Actions
- IaC via Terraform
- Monitoring via Prometheus & Grafana
- Images in ECR
- Logs in CloudWatch

## 27. How do you receive tickets?

Through:

- JIRA
- ServiceNow
- Azure DevOps Boards

## 28. Which EC2 instance type is used to deploy apps? Is it sufficient?

**Example answer:**

`t3.medium` / `t3.large`

Choose based on:

- CPU
- Memory
- Auto-scaling
- Application load

## 29. Which deployment strategies are used?

- Rolling update
- Blue-Green
- Canary
- Recreate

## 30. How do you install Nginx on 10 servers using Ansible?

Use an inventory and playbook. The source example is:

```yaml
hosts: web
tasks:
  - name: Install nginx
    apt: name=nginx state=present
```

## 31. Explain the Ansible structure.

**Folder structure:**

```text
inventories/
roles/
playbooks/
group_vars/
host_vars/
ansible.cfg
```

## 32. What is a playbook?

A YAML file that defines tasks, modules, and roles to execute automation.

## 33. What rollback strategies do you follow?

- Helm rollback
- Kubernetes deployment revision
- EC2 AMI rollback
- Terraform rollback (manual state revert)
- Git revert

## 34. What is the difference between `git clone` vs `git fork`, and `merge` vs `rebase`?

- **Clone:** Copy a repository locally.
- **Fork:** Copy a repository under your account.
- **Merge:** Combines changes with a merge commit.
- **Rebase:** Rewrites commit history for a cleaner log.

## 35. How do you combine multiple commits into a single commit?

```bash
git rebase -i HEAD~n
```

## 36. What is the `.git` folder?

It stores:

- Repository history
- Branches
- Objects
- Configuration

## 37. If you lost the `.git` folder, how do you restore it?

The source says you cannot fully restore it and suggests reinitializing:

```bash
git init
git remote add origin <url>
git fetch
```

## 38. What is the difference between `git pull` and `git fetch`?

- `git fetch` → Downloads changes but does not merge them.
- `git pull` → Downloads changes and merges automatically.

## 39. Where do you store Jenkinsfiles and Dockerfiles?

Typically, in each service repository:

```text
/app
  Dockerfile
  Jenkinsfile
```

## 40. Docker stops and restarts, and data is lost. How do you fix it?

Use Docker volumes or bind mounts to persist data.

## 41. What is CrashLoopBackOff?

A pod keeps crashing and Kubernetes keeps restarting it.

**Causes:**

- Application errors
- Wrong configurations
- Missing dependencies
- Liveness probe failure

## 42. How do you delete unused Docker containers and images?

```bash
docker system prune -a
```

## 43. What types of Load Balancers have you used?

- ALB
- NLB
- CLB

In Kubernetes:

- Ingress Controller
- Service `LoadBalancer`

## 44. What are S3 storage classes?

- Standard
- Standard-IA
- One Zone-IA
- Glacier
- Glacier Deep Archive
- Intelligent-Tiering

## 45. How do you locate the path of a file?

```bash
find / -name filename
```

## 46. How do you delete log files larger than 50 MB and older than 30 days?

```bash
find /var/log -type f -size +50M -mtime +30 -delete
```

## 47. What is the difference between `CMD` and `ENTRYPOINT`?

- **CMD:** Default command; can be overridden.
- **ENTRYPOINT:** Command that is always executed and cannot be overridden unless using `--entrypoint`.

## 48. How did you reduce deployment cost by 40%?

**Sample answer from the source:**

- Migrated workloads to EKS with auto-scaling
- Used Spot instances
- Implemented CI/CD to reduce idle compute
- Optimized Docker images
- Reduced unused infrastructure with Terraform cleanup
- Used S3 lifecycle policies
