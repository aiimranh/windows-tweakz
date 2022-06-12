# Pandoc : md to PDF
## Command Prompt
* `pandoc -s -o doc.pdf doc.md`
* `pandoc -o doc.pdf -s doc.md`

* `pandoc -s -o doc.pdf part01.md part02.md`
* `pandoc -o doc.pdf -s part01.md part02.md`

* `pandoc -s -V geometry:margin=1in -o documentation.pdf part01.md part02.md` (tested good)
* `pandoc -V geometry:margin=1in -o documentation.pdf -s part01.md part02.md` (tested good)

#
# Pandoc : md to html
## Command Prompt
* `pandoc -s -o doc.html --metadata title="test" doc.md`
* `pandoc -o doc.html --metadata title="test" -s doc.md`

* `pandoc -s -o doc.html --metadata title="test" part01.md part02.md`
* `pandoc -o doc.html --metadata title="test" -s part01.md part02.md`

* `pandoc -s -V geometry:margin=1in -o documentation.html --metadata title="test" part01.md part02.md` (tested good)
* `pandoc -V geometry:margin=1in -o documentation.html --metadata title="test" -s part01.md part02.md` (tested good)

#
# Pandoc : md to docx
## Command Prompt
* `pandoc -s -o doc.html doc.md`
* `pandoc -o doc.docx -s doc.md`

* `pandoc -s -o doc.docx part01.md part02.md`
* `pandoc -o doc.docx -s part01.md part02.md`

* `pandoc -s -V geometry:margin=1in -o documentation.docx part01.md part02.md` (tested good)
* `pandoc -V geometry:margin=1in -o documentation.docx -s part01.md part02.md` (tested good)

#
# Pandoc : ipynb to PDF
## Command Prompt
* `pandoc --from ipynb --to pdf -o name.pdf name.ipynb`

* `pandoc -V geometry:margin=1in --template=special --from ipynb --to pdf -o name.pdf name.ipynb`

* `pandoc -V geometry:margin=1in --from ipynb --to pdf -o name.pdf name.ipynb`

* `pandoc -V linkcolor:blue -V geometry:margin=1.5cm -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono" -V fontsize=12pt --from ipynb --to pdf -o name.pdf name.ipynb`
(tested good)


## Powershell
### recursive conversion all file from current directory and sub directory.
* `Get-ChildItem -File -Recurse -Filter *.ipynb | ForEach-Object {
  pandoc -V linkcolor:blue -V geometry:margin=1.5cm -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono" -V fontsize=12pt --from ipynb --to pdf -o ($_.Basename + '.pdf') $_.Fullname
}`

#