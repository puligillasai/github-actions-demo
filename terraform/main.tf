# Create the Azure Kubernetes Service (AKS) Cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "demo-aks-${terraform.workspace}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "demoaks"

  # We use a small, single node for this beginner demo
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s" 
  }

  identity {
    type = "SystemAssigned"
  }
}
