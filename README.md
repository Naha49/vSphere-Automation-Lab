# ☁️ vSphere-Automation-Lab

Projet personnel d’automatisation de déploiement de VM sur VMware vSphere, utilisant **PowerCLI** et **Ansible**.  
Ce projet simule un usage réel d'ingénierie système dans un environnement virtualisé.

---

## 🧠 Objectif

- Automatiser le déploiement de machines virtuelles via script
- Utiliser PowerCLI (PowerShell) et Ansible
- Documenter une architecture lab VMware
- Valoriser des compétences en virtualisation, scripting, et cloud privé

---

## 🛠️ Technologies

- VMware vSphere / vCenter
- PowerShell + PowerCLI
- Ansible + module `community.vmware`
- Python (pour Ansible)
- Documentation Markdown

---

## 📁 Contenu

### `powershell/deploy_vm.ps1`
Script PowerCLI pour créer une VM depuis un template

### `ansible/playbook_deploy_vm.yml`
Playbook Ansible pour déploiement automatisé

### `docs/architecture.png`
Schéma de l'infra (ou ASCII si pas d’image)

---

## 🚀 Utilisation PowerCLI

.\powershell\deploy_vm.ps1

🚀 Utilisation Ansible

ansible-playbook -i ansible/inventory.ini ansible/playbook_deploy_vm.yml


📌 Exemple d’environnement simulé

    vCenter : 192.168.1.100

    Template utilisé : Ubuntu-Template

    Cluster : Cluster01

    Datastore : Datastore1

    Réseau : VM Network

👨‍💻 Auteur

NAHA49
