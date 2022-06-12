# MS Office 2021

## SetUp:
01. <a href="https://www.microsoft.com/en-us/download/details.aspx?id=49117">Download</a> `Office Deployment Tool` and extract it,
keep `setup.exe` file remove others.

02. <a href="">Open</a> `Apps Admin Center` and `create a  new configuration`, and export as `Configuration.xml`

03. Copy the `Configuration.xml` and `setup.exe` file in a folder.

04. Open `PowerShell` in the folder and run it.
    * `.\setup.exe /download .\Configuration.xml` (after completed then run second one)
    * `.\setup.exe /configure .\Configuration.xml`

## Licensing:
<a href="https://msguides.com/office-2021">Office 2021 Activation</a>