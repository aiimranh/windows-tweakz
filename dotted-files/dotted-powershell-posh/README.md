# Windows Customization
## Recommened:
01. `PowerShell 7+` Install from Microsoft Store
#
## Modules:
01. TERMINAL-ICONS

	01. Installation:
	* `Install-Module -Name Terminal-Icons -Repository PSGallery`

	02. Type `$PROFILE` in Powershell

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

03. Install [oh my posh](https://ohmyposh.dev/) and follow the offical websites

	01. Copy `powerlevel10k_rainbow.omp.json` to `C:\Users\AIIH\AppData\Local\Programs\oh-my-posh\themes\`

	02. Type `$PROFILE` in Powershell

	02. Added the below line in the file : `C:\Users\AIIH\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
	* `oh-my-posh init pwsh --config "C:\Users\AIIH\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json" | Invoke-Expression`

#