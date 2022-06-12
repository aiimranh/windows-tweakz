# Windows Customization
## Recommened:
01. PowerShell 7+ Install from Microsoft Store
#
## Modules:
01. TERMINAL-ICONS

	01. Installation:
	* `Install-Module -Name Terminal-Icons -Repository PSGallery`

	02. Type `$PROFILE`

	03. Added the lines the file : `C:\Users\AIIH\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
	* `Import-Module -Name Terminal-Icons`

02. PSReadLine Prediction

	A. Installation:
	* `Install-Module -Name PSReadLine -AllowPrerelease`

	B. Added the line in the file `C:\Users\AIIH\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

	* `Import-Module PSReadLine`
	* `Set-PSReadLineOption -EditMode Windows`
	* `Set-PSReadLineOption -PredictionSource History`
	* `Set-PSReadLineOption -PredictionViewStyle ListView`
	* `Set-PSReadLineOption -PredictionViewStyle InlineView`

03. Install `oh my posh` and follow the offical websites

#