git clone https://github.com/Azure-Samples/azure-voting-app-redis.git
cd azure-voting-app-redis

RG_NAME="aks_poc_rg"
REGION="eastus"
ACR_NAME="kk81acr"
ACR_SKU="Basic"


az group create --name $RG_NAME --location $REGION
az acr create --resource-group $RG_NAME --name $ACR_NAME --sku $ACR_SKU
az acr login --name $ACR_NAME

