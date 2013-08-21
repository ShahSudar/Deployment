﻿# install modules to your user profile
$modules = "$home\Documents\WindowsPowerShell\Modules"

# install AppRolla module
New-Item "$modules\AppRolla" -ItemType Directory -Force | Out-Null
(New-Object Net.WebClient).DownloadFile("https://raw.github.com/AppVeyor/AppRolla/master/AppRolla.psm1", "$modules\AppRolla\AppRolla.psm1")

# install AppVeyor module
New-Item "$modules\AppVeyor" -ItemType Directory -Force | Out-Null
(New-Object Net.WebClient).DownloadFile("https://raw.github.com/AppVeyor/AppVeyor-PowerShell/master/AppVeyor.psm1", "$modules\AppVeyor\AppVeyor.psm1")