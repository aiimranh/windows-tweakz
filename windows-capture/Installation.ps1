# Provisioned apps installed
Add-ProvisionedAppxPackage -Online -PackagePath "C:\Users\$Env:UserName\Downloads\MicrosoftHEVCVideoExtension\Microsoft.HEVCVideoExtension.Appx" -SkipLicense

# Installing Office 365
"C:\Users\$Env:UserName\Downloads\Office\setup.exe" /download "C:\Users\$Env:UserName\Downloads\Office\Configuration.xml"
"C:\Users\$Env:UserName\Downloads\Office\setup.exe" /configure "C:\Users\$Env:UserName\Downloads\Office\Configuration.xml"