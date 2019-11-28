Set-AzureRmCurrentStorageAccount -ResourceGroupName azurepipelineResGroup -Name azurepipelineResGroup
$url = (Get-AzureStorageBlob -Container test -Blob Demo1ParentTemplate.json).ICloudBlob.uri.AbsoluteUri
New-AzureRmResourceGroupDeployment -ResourceGroupName azurepipelineResGroup -TemplateUri $url 
