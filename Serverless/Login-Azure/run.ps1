# POST method: $req
$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$name = $requestBody.name

# GET method: each querystring parameter is its own variable
if ($req_query_name) 
{
    $name = $req_query_name 
}

Write-Output "Loading AzureRm.Profile Module"

#$selfPath = (Get-Item -Path "." -Verbose).FullName
#$modulePath = Join-Path $selfPath "Modules\AzureRM.profile\4.1.1\AzureRm.profile"

Import-Module "C:\Users\k.lemon\OneDrive - Avanade\Projects\Halliburton\Serverless\azure-devtestlab\Serverless\Login-Azure\Modules\AzureRM.profile\4.1.1\AzureRM.Profile.psm1"

$result = Get-Help Login-AzureRmAccount | Out-String

Out-File -Encoding Ascii -FilePath $res -inputObject $result