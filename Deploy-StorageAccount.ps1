{
$resourceGroupName = 'SantiaDemo'
$resourceGroupLocation = 'Southeast Asia'
$resoruceDeploymentName= "santiastorageaccount"
$templatePath = $env:SystemDrive + '\' + 'santia\StorageAccount\StorageAccount'
$templateName= 'azuredeploy.json'
$template = $templatePath + '\' + $templateName
}


# Creating a new Resource Group

{
New-AzureRmResourceGroup `
  -Location $resourceGroupLocation `
  -Name $resourceGroupName `
  -verbose -Force
}

# Creation of Account Storage

{
 New-AzureRmResourceGroupDeployment `
   -Name $resoruceDeploymentName `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $template `
  -verbose -Force

}