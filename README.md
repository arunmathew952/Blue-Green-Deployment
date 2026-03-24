# 🚀 Kubernetes Blue-Green Deployment

## 📌 Overview
This project demonstrates a blue-green deployment strategy on Kubernetes to achieve zero-downtime application releases. It maintains two identical environments and switches traffic between them during updates.

The focus was on understanding how deployments can be handled safely without affecting users, while keeping rollback simple and reliable.

---

## 🖼️ Architecture Diagram
![Architecture](images/architecture.png)

---

## ⚙️ Tech Stack
- Backend: Java  
- Frontend: HTML  
- Database: MySQL  
- Containerization: Docker  
- Orchestration: Kubernetes  
- CI/CD: Jenkins  
- Code Quality: SonarQube  
- Artifact Management: Nexus  

---

## 🏗️ Architecture
- Two environments:
  - **Blue (current live version)**
  - **Green (new version)**
- Kubernetes Service routes traffic
- Only application pods are updated
- Database remains unchanged to ensure consistency

---

## 🔄 Deployment Flow
![Deployment Flow](images/deployment-flow.png)

1. Blue environment serves live traffic  
2. Green environment is deployed with new changes  
3. Testing is done on Green  
4. Traffic is switched from Blue → Green  
5. Blue is kept as backup for rollback  

---

## 🔐 Key Features
- Zero-downtime deployments  
- Easy rollback mechanism  
- Isolated application updates  
- RBAC-based access control  

---

## ⚡ CI/CD Workflow
![CI/CD Pipeline](images/cicd.png)

- Code push triggers Jenkins pipeline  
- SonarQube checks code quality  
- Docker image is built and stored in Nexus  
- Kubernetes manifests deploy the new version  

---

## 📦 Kubernetes Resources
- Deployments  
- Services  
- ConfigMaps  
- Secrets  
- RBAC (Roles & RoleBindings)  

---

## 📊 What I Learned
- Practical understanding of blue-green deployments  
- Managing parallel environments in Kubernetes  
- Safe traffic switching without downtime  
- Importance of stable database handling  
- CI/CD integration for controlled releases  

---

## 🚀 Future Improvements
- Add Ingress-based routing  
- Automate traffic switching in pipeline  
- Integrate Prometheus & Grafana monitoring  
- Explore canary deployments  

---

## 💡 Final Thoughts
This project helped me understand how production deployments can be handled with minimal risk. It gave me hands-on experience with Kubernetes, CI/CD tools, and deployment strategies used in real-world environments.
