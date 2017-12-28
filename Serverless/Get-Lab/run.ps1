# GET method: each querystring parameter is its own variable
if ($req_query_name) 
{
    $LabName = $req_query_labname 
}

#Install-Module -Name AzureRM.Resources -Scope CurrentUser -ErrorAction Continue -Verbose

#$lab = Find-AzureRmResource -ResourceType 'Microsoft.DevTestLab/labs' -ResourceNameEquals $LabName

#if(!$lab)
#{
#    throw "Lab named $LabName was not found"
#}

#Out-File -Encoding Ascii -FilePath $res -inputObject "Lab Name: $lab"
