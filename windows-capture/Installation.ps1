# Provisioned apps installed
Add-ProvisionedAppxPackage -Online -PackagePath "C:\Users\$Env:UserName\Downloads\MicrosoftHEVCVideoExtension\Microsoft.HEVCVideoExtension.Appx" -SkipLicense

# Installing Office 365
"$pwd\Office\setup.exe" /download "$pwd\Office\Configuration.xml"
"$pwd\Office\setup.exe" /configure "$pwd\Office\Configuration.xml"
