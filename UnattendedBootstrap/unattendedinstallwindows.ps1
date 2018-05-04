<powershell>

## Download the Chef client
$clientURL = "https://packages.chef.io/files/stable/chef/14.0.202/windows/2016/chef-client-14.0.202-1-x64.msi"
$clientDestination = "C:\chef-client.msi"
Invoke-WebRequest $clientURL -OutFile $clientDestination

## Install the chef-client
Start-Process msiexec.exe -ArgumentList @('/qn', '/lv C:\Windows\Temp\chef-log.txt', '/i C:\chef-client.msi', 'ADDLOCAL="ChefClientFeature,ChefSchTaskFeature,ChefPSModuleFeature"') -Wait


## Download validator.pem
$pemUrl = "https://s3-us-west-2.amazonaws.com/qt-chef-unattended/qtstaff-validator.pem"
$pemDestination = "C:\chef\qtstaff-validator.pem"
Invoke-WebRequest $pemUrl -OutFile $pemDestination

## Create first-boot.json
$firstboot = @{
   "run_list" = @("")
}
Set-Content -Path c:\chef\first-boot.json -Value ($firstboot | ConvertTo-Json -Depth 10)

## Create client.rb
$nodeName = "lab-win-{0}" -f (-join ((65..90) + (97..122) | Get-Random -Count 4 | % {[char]$_}))

$clientrb = @"
chef_server_url        'https://api.chef.io/organizations/qtstaff'
validation_client_name 'qtstaff-validator'
validation_key         'C:\chef\qtstaff-validator.pem'
node_name              '{0}'
"@ -f $nodeName

Set-Content -Path c:\chef\client.rb -Value $clientrb

## Run Chef
C:\opscode\chef\bin\chef-client.bat -j C:\chef\first-boot.json  --environment _default

</powershell>
<persist>true</persist>