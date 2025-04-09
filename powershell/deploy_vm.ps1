# ================================================
# Script : deploy_vm.ps1
# Description : Déploie une VM depuis un template VMware
# Auteur : naha49
# ================================================

# Connexion au vCenter
$vcServer = "192.168.1.100"
$vcUser = "administrator@vsphere.local"
$vcPassword = "1234"  # ⚠️ Remplacer par un mot de passe réel ou gérer via SecureString

Write-Host "🔐 Connexion au vCenter $vcServer..."
Connect-VIServer -Server $vcServer -User $vcUser -Password $vcPassword

# Paramètres de la nouvelle VM
$vmName = "Demo-VM"
$templateName = "Ubuntu-Template"
$vmHost = "esxi01.local"
$datastore = "Datastore1"
$network = "VM Network"
$resourcePool = "Resources"

# Création de la VM depuis le template
Write-Host "🚀 Déploiement de la VM '$vmName' depuis le template '$templateName'..."
New-VM -Name $vmName `
       -Template $templateName `
       -VMHost $vmHost `
       -Datastore $datastore `
       -NetworkName $network `
       -ResourcePool $resourcePool `
       -Confirm:$false

# Ajout d'un snapshot initial
Write-Host "📸 Création d’un snapshot initial..."
Get-VM -Name $vmName | New-Snapshot -Name "Initial Snapshot" -Description "Snapshot automatique après déploiement"

# Déconnexion propre
Write-Host "✅ Déploiement terminé. Déconnexion du vCenter..."
Disconnect-VIServer -Server $vcServer -Confirm:$false
