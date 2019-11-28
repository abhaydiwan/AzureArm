Set-AzureRmCurrentStorageAccount -ResourceGroupName armdemo -Name armdemo
$url = (Get-AzureStorageBlob -Container test -Blob Demo1ParentTemplate.json).ICloudBlob.uri.AbsoluteUri
New-AzureRmResourceGroupDeployment -ResourceGroupName armdemo -TemplateUri $url 
