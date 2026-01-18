# JournalSystem_Q8SFILES

Kubernetes manifests for deploying the **JournalSystem** microservices architecture.

This repository contains all Kubernetes YAML files used to deploy, configure, and run the full JournalSystem stack on a **k3s** cluster, including backend services, frontend, databases, and Keycloak.

---

## Purpose

This repository acts as the **infrastructure layer** of the JournalSystem project.

It defines:
- How services are deployed
- How they communicate
- How they are exposed
- How data is persisted

---

## Tech Stack

- **Kubernetes (k3s)**
- **Docker**
- **MySQL**
- **Keycloak**
- **NodePort / ClusterIP Services**
- **PersistentVolumeClaims (PVCs)**

---

## Services Deployed

The manifests in this repository deploy the following components:

### Backend Services
- **JournalSystem_User**
- **JournalSystem_Messages**
- **JournalSystem_Logs**
- **JournalSystem_Search**
- **JournalSystem_Image**

### Infrastructure
- **Keycloak** (authentication & authorization)
- **MySQL databases** (one per service where applicable)
- **Persistent Volumes** for data durability

### Frontend
- **JournalSystem_FrontEnd**

---

## Repository Structure (example)

```text
.
├── user/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── pvc.yaml
├── messages/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── pvc.yaml
├── logs/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── pvc.yaml
├── search/
│   ├── deployment.yaml
│   └── service.yaml
├── image/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── pvc.yaml
├── frontend/
│   ├── deployment.yaml
│   └── service.yaml
└── keycloak/
    ├── deployment.yaml
    ├── service.yaml
    └── pvc.yaml
