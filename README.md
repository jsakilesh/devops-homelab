# 🏠 DevOps Homelab

> A production-grade DevOps homelab built on VMware vSphere + Kubernetes, demonstrating end-to-end Infrastructure as Code, CI/CD, GitOps, and Observability.

## 🏗️ Architecture

```
VMware ESXi Host
└── vCenter Server
    ├── Ubuntu VMs (via Terraform)
    │   ├── Kubernetes Cluster (kubeadm / Kind)
    │   │   ├── App: nginx (Helm chart)
    │   │   ├── Monitoring: Prometheus + Grafana + Alertmanager
    │   │   ├── Logging: Loki + Promtail
    │   │   └── GitOps: Flux v2
    │   └── GitLab / Gitea (self-hosted)
    └── Ansible (configuration management)
```

## 📁 Repo Structure

```
devops-homelab/
├── terraform/          # VMware vSphere VM provisioning
├── ansible/            # OS hardening + K8s bootstrap
├── kubernetes/         # Helm charts + Kustomize manifests
├── ci-cd/              # GitHub Actions pipelines
├── monitoring/         # Prometheus rules + Grafana dashboards
└── docs/               # Architecture diagrams + runbooks
```

## 🚀 Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/jsakilesh/devops-homelab.git
cd devops-homelab

# 2. Provision VMs with Terraform
cd terraform
terraform init && terraform plan && terraform apply

# 3. Bootstrap Kubernetes with Ansible
cd ../ansible
ansible-playbook -i inventory/hosts.yml playbooks/k8s-bootstrap.yml

# 4. Deploy the app
cd ../kubernetes
helm install myapp ./charts/nginx-app

# 5. Deploy monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack
```

## 🛠️ Tech Stack

| Layer | Tools |
|-------|-------|
| Virtualisation | VMware ESXi · vCenter · vSAN · NSX |
| IaC | Terraform (vSphere provider) |
| Config Mgmt | Ansible |
| Container Platform | Kubernetes (kubeadm / Kind / k3s) |
| App Packaging | Helm · Kustomize |
| CI/CD | GitHub Actions |
| GitOps | Flux v2 |
| Monitoring | Prometheus · Grafana · Alertmanager |
| Logging | Loki · Promtail |
| Security | Trivy · OPA Gatekeeper · NetworkPolicy · RBAC |
| Secrets | HashiCorp Vault |

## 📜 License
MIT