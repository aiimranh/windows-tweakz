# Uninstall Optional Features
Get-WindowsPackage -Online | Where PackageName -like *InternetExplorer* | Remove-WindowsPackage -Online -NoRestart
Get-WindowsPackage -Online | Where PackageName -like *Math* | Remove-WindowsPackage -Online -NoRestart
Get-WindowsPackage -Online | Where PackageName -like *Step* | Remove-WindowsPackage -Online -NoRestart

# Uninstall default Microsoft applications
Get-AppxPackage "Microsoft.3DBuilder"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.BingFinance"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.BingNews"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.BingSports"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.BingWeather"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Getstarted"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.MicrosoftOfficeHub"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.MicrosoftSolitaireCollection"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Office.OneNote"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.People"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.SkypeApp"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "microsoft.windowscommunicationsapps"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.WindowsMaps"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.WindowsPhone"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.WindowsSoundRecorder"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.XboxApp"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.ZuneMusic"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.ZuneVideo"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.AppConnector"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.ConnectivityStore"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Office.Sway"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Messaging"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.CommsPhone"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "9E2F88E3.Twitter"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "king.com.CandyCrushSodaSaga"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.WindowsFeedbackHub"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Wallet"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.ScreenSketch"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.GetHelp"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.Xbox.TCUI"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.XboxGameOverlay"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.XboxSpeechToTextOverlay"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Microsoft.MixedReality.Portal"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "4DF9E0F8.Netflix"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "7EE7776C.LinkedInforWindows"-AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "9E2F88E3.Twitter" -AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "A278AB0D.DisneyMagicKingdoms" -AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "SpotifyAB.SpotifyMusic" -AllUsers | Remove-AppxPackage -AllUsers
Get-AppxPackage "Facebook.Facebook" -AllUsers | Remove-AppxPackage -AllUsers
Get-AppBackgroundTask "Microsoft.XboxIdentityProvider" | Remove-AppPackage


# Services
$services = @(
    "diagnosticshub.standardcollector.service" # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                # Diagnostics Tracking Service
    "dmwappushservice"                         # WAP Push Message Routing Service (see known issues)
    # "lfsvc"                                  # Geolocation Service
    "MapsBroker"                               # Downloaded Maps Manager
    "NetTcpPortSharing"                        # Net.Tcp Port Sharing Service
    # "RemoteAccess"                           # Routing and Remote Access
    # "RemoteRegistry"                         # Remote Registry
    # "SharedAccess"                           # Internet Connection Sharing (ICS)
    "TrkWks"                                   # Distributed Link Tracking Client
    # "WbioSrvc"                               # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                 # WLAN AutoConfig
    "WMPNetworkSvc"                            # Windows Media Player Network Sharing Service
    #"wscsvc"                                  # Windows Security Center Service
    #"WSearch"                                 # Windows Search
    "XblAuthManager"                           # Xbox Live Auth Manager
    "XblGameSave"                              # Xbox Live Game Save Service
    "XboxNetApiSvc"                            # Xbox Live Networking Service
    # "ndu"                                    # Windows Network Data Usage Monitor

    # Services which cannot be disabled
    #"WdNisSvc"
)

foreach ($service in $services) {
    Write-Output "Disabling $service"
    Get-Service -Name $service | Set-Service -StartupType Disabled
}

# Add Recycle Bin to the Navigation Plane.
New-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}" -Name "System.IsPinnedToNameSpaceTree" -PropertyType DWORD -Value 1 -Force

