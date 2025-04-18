#### This script will allow you to pass CNAP CATI requirement.  This does not Harden the OS.################
#### USE AT YOUR OWN RISK #################

#### V-63325 The Windows Installer Always install with elevated privileges must be disabled.######
#Set-ItemProperty -Path 'hklm:\SOFTWARE\Policies\Microsoft\Windows\Installer' -Name "AlwaysInstallElevated" -Value "0" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer\"
$Name = "AlwaysInstallElevated"
$value = "0"

 IF(!(Test-Path $registryPath))

{
New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63335 The Windows Remote Management (WinRM) client must not use Basic authentication.######
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client' -Name "AllowBasic" -Value "0" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client\"
$Name = "AllowBasic"
$value = "0"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63347 The Windows Remote Management (WinRM) service must not use Basic authentication.######
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service' -Name "AllowBasic" -Value "0" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service\"
$Name = "AllowBasic"
$value = "0"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63349 Windows 10 systems must be maintained at a supported servicing level.######
## Keep your Windows 10 to lastest patches/updates ##

#### V-63351  The Windows 10 system must use an anti-virus program ######
## Have Windows Defender or other antivirus software installed and updated ##

#### V-63353  Local volumes must be formatted using NTFS. ######
## Format all local volumes to use NTFS. ##

#### V-63361 Only accounts responsible for the administration of a system must have Administrator rights on the system. ######
## Configure the system to include only administrator groups or accounts that are responsible for the system in the local Administrators group. ##
##CNAP Script Does Not checked

#### V-63377 Internet Information System (IIS) or its subcomponents must not be installed on a workstation.. ######
## Uninstall "Internet Information Services" or "Internet Information Services Hostable Web Core" from the system. ##

#### V-63429  Reversible password encryption must be disabled. ####
## Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy >> "Store passwords using reversible encryption" to "Disabled". ##
##CNAP Script Does Not checked

#### V-63599  Credential Guard must be running on Windows 10 domain-joined systems. ####
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard' -Name "LsaCfgFlags" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\"
$Name = "LsaCfgFlags"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63651  Solicited Remote Assistance must not be allowed. ####
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name "fAllowToGetHelp" -Value "0" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\"
$Name = "fAllowToGetHelp"
$value = "0"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63667  Autoplay must be turned off for non-volume devices. ####
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name "NoAutoplayfornonVolume" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer\"
$Name = "NoAutoplayfornonVolume"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63671  The default autorun behavior must be configured to prevent autorun commands. ####
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name "NoAutorun" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\"
$Name = "NoAutorun"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63673  Autoplay must be disabled for all drives. ####
#Set-ItemProperty -Path 'hklm:\\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\' -Name "NoDriveTypeAutoRun" -Value "255" -PropertyType "Dword"
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\"
$Name = "NoDriveTypeAutoRun"
$value = "255"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63739   Anonymous SID/Name translation must not be allowed. ####
##  Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> Security Options >> "Network access: Allow anonymous SID/Name translation" to "Disabled".
##CNAP Script Does Not checked

#### V-63741   Remote connections must be encrypted to prevent interception of data or sensitive information.
$registryPath = "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\"
$Name = "MinEncryptionLevel"
$value = "3"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63745  Anonymous enumeration of SAM accounts must not be allowed. ####
#Set-ItemProperty -Path 'hklm:\\SYSTEM\CurrentControlSet\Control\Lsa' -Name "RestrictAnonymousSAM" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\"
$Name = "RestrictAnonymousSAM"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}


#### V-63749  Anonymous enumeration of shares must be restricted. ####
#Set-ItemProperty -Path 'hklm:\\SYSTEM\CurrentControlSet\Control\Lsa' -Name "RestrictAnonymous" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\"
$Name = "RestrictAnonymous"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63797  The system must be configured to prevent the storage of the LAN Manager hash of passwords. ####
#Set-ItemProperty -Path 'hklm:\\SYSTEM\CurrentControlSet\Control\Lsa' -Name "NoLMHash" -Value "1" -PropertyType "Dword"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\"
$Name = "NoLMHash"
$value = "1"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63801  The LanMan authentication level must be set to send NTLMv2 response only, and to refuse LM and NTLM. ####
#Set-ItemProperty -Path 'hklm:\\SYSTEM\CurrentControlSet\Control\Lsa' -Name "LmCompatibilityLevel" -Value "5" -PropertyType "Dword"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\"
$Name = "LmCompatibilityLevel"
$value = "5"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

#### V-63847  The Act as part of the operating system user right must not be assigned to any groups or accounts. ####
## Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> User Rights Assignment >> "Act as part of the operating system" to be defined but containing no entries (blank). ##
##CNAP Script Does Not checked

####  V-63859  The Create a token object user right must not be assigned to any groups or accounts. ####
## Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> User Rights Assignment >> "Create a token object" to be defined but containing no entries (blank). ##
##CNAP Script Does Not checked

#### V-63869  The Debug programs user right must only be assigned to the Administrators group. ####
##  Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> User Rights Assignment >> ""Debug programs"" to only include the following groups or accounts: Administrators" ####
##CNAP Script Does Not checked

#### V-68845  Data Execution Prevention (DEP) must be configured to at least OptOut. ####
##   "Verify the DEP configuration. Open a command prompt (cmd.exe) or PowerShell with elevated privileges (Run as administrator). Enter ""BCDEdit /enum {current}"". (If using PowerShell ""{current}"" must be enclosed in quotes.) If the value for ""nx"" is not ""OptOut"", this is a finding. (The more restrictive configuration of ""AlwaysOn"" would not be a finding.)" ####
##CNAP Script Does Not checked

#### V-68849  Structured Exception Handling Overwrite Protection (SEHOP) must be enabled. ####
#Set-ItemProperty -Path 'hklm:\\SYSTEM\CurrentControlSet\Control\Session Manager\kernel' -Name "DisableExceptionChainValidation" -Value "0" -PropertyType "Dword"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel\"
$Name = "DisableExceptionChainValidation"
$value = "0"

 IF(!(Test-Path $registryPath))

 {

New-Item -Path $registryPath -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}

ELSE {
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD -Force | Out-Null}


#### V-78129  Administrative accounts must not be used with applications that access the Internet, such as web browsers, or with potential Internet sources, such as email. ####
## CNAP Script Does Not checked


# SIG # Begin signature block
# MIIc1wYJKoZIhvcNAQcCoIIcyDCCHMQCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU+Uau1WvmizV0Lyimb8CtDC3v
# daigghkmMIIGFDCCA/ygAwIBAgICEAAwDQYJKoZIhvcNAQENBQAwgYgxCzAJBgNV
# BAYTAlVTMREwDwYDVQQIDAhDb2xvcmFkbzEZMBcGA1UEBwwQQ29sb3JhZG8gU3By
# aW5nczEZMBcGA1UECgwQRG9EIFBsYXRmb3JtIE9uZTENMAsGA1UECwwEQ05BUDEh
# MB8GCSqGSIb3DQEJARYScGFja2V0amVkaUBkc28ubWlsMB4XDTIxMDMwNDA2MTA0
# OFoXDTMxMDMwMjA2MTA0OFowXTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4g
# R292ZXJubWVudDETMBEGA1UECxMKRG9EIFAxIFBLSTEfMB0GA1UEAxMWRG9EIFAx
# IEludGVybWVkaWF0ZSBDQTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# AMxeuPk/Dp9xDNQEJrGj7nrqx8kFyUyWeQKHuYyCF6Si4CCOQhIxoz+0F91n1fGZ
# 5mZOejTls+CYbcrb5tMjhb8rCxGRQGAcZlXf9zCnjUP1DyigZ09PD01r0sehEAU6
# Yx9bmN3FvKuMw/I26E2UCo+9LchjUPe4URqkbycuxVc5uvbxRqfZgjMnwK63ynzV
# E/aw/31H62jkiam+QZVlXcjlnoOWCuARO9badHXXauaMNsBRtNVpvgT8fGBEvj7F
# DZQ69Xt09wNKj72qZMiwdghxjryu2Bd1qah7WMCn4NikDcp2Tr2ZkQSNtg9N0sbC
# xBUq3N7nI9jFhgQuQmPyczZqhLBNkgRITcMohdEwUB+/4vtW1hVxAl9pEixhCo9C
# JtR7vShVwlDcTsNxn0IMkuDivQPN8Vjo6qcYCNgRU60PMHdDb6e6xWMUdf9yQDZR
# AYUaruKNfK3uHb5M8k4ZMjtJsp+rAEsJVmPYl/nujV83eCdRdwDNRxzN25eOKG+I
# cyGMJGzH13xgFgG3qywltbZ2b4pqeLDX294+yHQC0z5aS3zT2+L2Jq0maJbqvJdH
# ZneTHL/p49k6mH2VNFL/CzCL4KE129SqdUIMJ9EbQgdxT6tpMixMy2IiVii0RlYc
# +XG8fLRMHLsZT1GFG1u7Q8I568K3CzacGW07bjGvt2IFAgMBAAGjgbEwga4wHQYD
# VR0OBBYEFIQZnkAz1Ni42Ur3dDbGvRaZ2AduMB8GA1UdIwQYMBaAFISQ6mhle7fu
# RKEpK9HZHQxpuw8ZMBIGA1UdEwEB/wQIMAYBAf8CAQIwDgYDVR0PAQH/BAQDAgGG
# MEgGA1UdHwRBMD8wPaA7oDmGN2h0dHBzOi8vY3ViYnlob2xlLmNuYXAuZHNvLm1p
# bC92MS9wa2kvcDFfaW50X2NhL2ludC9jcmwwDQYJKoZIhvcNAQENBQADggIBAG7E
# i3jWvrRwfyC0aeKWGi8hS41xQ/hnqozWy7PRi5tnVoeLAtQ169smjK52NxzkWclD
# kGfcGuUTkPto4RQ9SKLUYrjFWwWZGn5L3mhDxiQndAFCZROLPWz1QuSKle4D1Jh5
# 0PFKw/iiewvrBwbR4VM0jkZr6KOtK/XE1woUB9NGb61FZvP9aVmsDX283orLc6om
# qqO5cx+OEx2ZmonKh1fGSxfa173Xl7wJZlsp6aynS2Vun5ychjIGijS+WFstgYxr
# 7lauAboBivo3ogmqe0/bR/TQHqUR5Itn0kW3yz3Au/UVB2zA8/RBewH0P9Pp77WN
# DhYPGD4rfeKuj9whmI4QGFQEzFKRq+vKbkiNV7qq02/Bs0S3mvIXliDvtQSd11vQ
# eKa4Qg+OpRE1vjrlJfMAjtyy7fsOSyhTvkasekD7DdDzAQH5Le+x+/rqbqzfWR8O
# yQKDT3hDNr1Iqcv3UrsgDLjN7OvSRl8/v8uG5dNKdPi9kplvP2e1ureFBznZdUYo
# oyMlZlnjuoC3KnaeZEODnkPB06BRyb1um59VKtyu4kry9XFJDO3O0anB0ejw83rW
# mR1s7lwxyHiME3PTNnn8y11VwqF8IZTcDzs91jrbiaoB2POsAOSX3BlHv1ZQxGIj
# rR9Lirurcj/6Grsdet0MVdDwHoMUHhybflA+8F/aMIIGQDCCBCigAwIBAgIUGEkK
# ZECKszkd03147o8DALg4GVcwDQYJKoZIhvcNAQELBQAwYjELMAkGA1UEBhMCVVMx
# GDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDETMBEGA1UECxMKRG9EIFAxIFBLSTEk
# MCIGA1UEAxMbRG9EIFAxIENOQVAgSW50ZXJtZWRpYXRlIENBMB4XDTIyMDEyNjE4
# MjkxOVoXDTI1MDEyNTE4Mjk0OVowYjELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1Uu
# Uy4gR292ZXJubWVudDETMBEGA1UECxMKRG9EIFAxIFBLSTEkMCIGA1UEAxMbRG9E
# IFAxIENOQVAgQ29kZSBTaWduaW5nIENBMIICIjANBgkqhkiG9w0BAQEFAAOCAg8A
# MIICCgKCAgEAuF9aLPGyz2zYQvo0wRJmKFqPN0HawOVcaervJXwdItRONiNFPQD4
# TbSzVLLUYfCBowWQYSJP2D1zseWQJqpaPrRs2t3Rb1zUN+RHDLcUJaqL9G78euWi
# 69+Vx5NleOsLpPF1uL+LT1iGjV72KUroW8ZgiFsT2t7UYbyclhE1IgQaMAnm5QlS
# stQVH5fvgb9AJWSlqvV/31tyC8K6kOiZCqGPNVoQe3JvrmBos8s1yNIYs7kJT8p4
# bEG6uKKYey9OG5mLX9DlU10XDhu5aBW3GcV5W2caq3A4T47e8BDOUUFDZ0V2C1fO
# 54hlYazFfI1MXgN/zBqrQON+Twu7WF9ptsq2ppevn2AbbY9Q8xRgXuvXlKB9p/bq
# O9PylShhjsWYI4m9iXzy5WkQdkkT5msx3JTl68DsOORUFMc46Gotj23OhfQWkSDq
# CmnCqdNODI2vI7O7yMQjxsb9VRNQN4WhhC+rUysE2qMj1tRjVgc7gePp5AC8F+hr
# lZ2MTSb0DNNUhBS4B4vnkyZWhW0rb4MLa22if5uHAI4uI9Eu7sCMHFmItxJmqVMM
# DtzlD/q3PeXYZFK36zAzRrG+IBMesSWmZ5BlU2pGOz1BqmI5Z+G5BMEnmTCOJEhX
# w+nJPsAz8AMG/dBF2uexfshjI5yvazMRZle6w6Zf6edDsBoPMvagcVsCAwEAAaOB
# 7TCB6jAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBATAdBgNVHQ4E
# FgQUKzZEaHhkO3cEuS+SB1vPglsS61gwHwYDVR0jBBgwFoAUQITUq5WRQXJtY3gr
# 0s9UwSYG4V4wOgYIKwYBBQUHAQEELjAsMCoGCCsGAQUFBzABhh5odHRwczovL2Rl
# YXRoc3Rhci5jbmFwLmRzby5taWwwSAYDVR0fBEEwPzA9oDugOYY3aHR0cHM6Ly9j
# dWJieWhvbGUuY25hcC5kc28ubWlsL3YxL3BraS9jbmFwL2ludC9jZXJ0L2NybDAN
# BgkqhkiG9w0BAQsFAAOCAgEAMKGx35stG6UjSdI1eKyHs750o2cF6lGBiLU+9gHG
# x/ULCNjjuNEALsSck8/lZktWZyaAu3BWw5aQwpzioaesTNcB9HF4fwNMZw3wRC2b
# mfleGtvyqus+BYCMymz/t6OJbvFKS8MLCa27laPbSTL9plqqDBv6DfUJdptZFJY3
# AD6tT7wWZaB/pTBgWbPM7gL5N7cf/4INvZHbZOhaqxeg4Hkz7c/7NCcdIpWi2D4e
# Ski1cCXyAIGc/kI0a76v4FnzRce7xy9Zeyg52ifCBcPOMj1WqtBW4rsSBM5gn7a9
# hdSuBQ9KZJ4T8cWf2MbKHtczbS/i8UDRIrpr2zIxoWONuw/6PT50suFP0oCcayTl
# 3G+AvKnM4ngJ9r9UZXbSgfWvOjk0F6/h5J91rE0ryusMqw5jvqWEjFCXLdPkGiR7
# RWVr9NExUkN83B8P8NQuS1ql7RHLlXigzchyR8VN6o1u0xUsBOuNEG1qIRksuo+6
# fWzOgB4Wwa9BPXM5bbXhRZfgUajBjv1wdIwarZDth4zryqA4GfBpWZvnnAyrTuQo
# 8I+rteiisS4r3lqKejDa1W9afmw0AqgElZn6QjVDRINtZy9eUj1L/Umd5q7FXh7e
# YYUtBOyHjfQIRglPxaMB8nx9lwaR8F28D1pM5NaPG83rwgNQTsi2NU6PNoGa1Uti
# HIwwggZAMIIEKKADAgECAhR3xxjdIeowIsRW59Xt7emvsrfIfzANBgkqhkiG9w0B
# AQsFADBdMQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5TLiBHb3Zlcm5tZW50MRMw
# EQYDVQQLEwpEb0QgUDEgUEtJMR8wHQYDVQQDExZEb0QgUDEgSW50ZXJtZWRpYXRl
# IENBMB4XDTIyMDEyNjE4MDk0NFoXDTI1MDEyNTE4MTAxNFowYjELMAkGA1UEBhMC
# VVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDETMBEGA1UECxMKRG9EIFAxIFBL
# STEkMCIGA1UEAxMbRG9EIFAxIENOQVAgSW50ZXJtZWRpYXRlIENBMIICIjANBgkq
# hkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsSOiklEZp+l1zH0cRBqSyRk3/5rlXBgz
# 4f/4x/7Zmr4Su3y58RgNuF0+8M7wxiUV+eO19l9PedLJK6XHzbaG40/SDSSk0ppC
# NTADbPSt15DlWzEILo6eDyYNs41Wwpvr8eEN5e2VLoZ0h7C8Pxbh1bIxBvwzhTmO
# QQwx8VSnku5k4SEQbERGLgaaypW1ro7uXNVIWdPgSZ3jwf/Yqe9aqKEscD+9WULn
# ZXhCDqVGNPijvS/RAJCtA4ci5NnMNJrR8ooj6elzD6fA0Ze2ylwrzqXbGWoT/nH2
# 2cKcikxIQefcv/bR1tF1oyv0Zdoo8uL+z3VVhlHEyVz5r9xZfRxo8KLCwM2zAYgg
# gPXpL5Mea35pB4sjcgrTZX0iEzUzwCioIrSdYZjl6iJ1DwMDlbjINCxeVcAevg/h
# PZLuZ1dqyAUF6Tn1blDgDNdbu+52TUiaWoDzRmtqVtYvqw8CygtO+OVLqMYQYVF2
# ZFDgyq2HprXCFRDHlGjO7IHQHB1lPVtYTkkpSYfuZBt85AzhaUKnJVdGJDvYDaJA
# 9QxaagxzJL/5MELv8Tuge5+mWrKTj6uIUZwjTBiVowzDtIVR2uvgwU7EaCA/flSa
# axMDsW8Xl9CkGmPyXxMqL40+KdU7VEJHdsaPZLtZOHlAOGhD9kxVVH0HQm7awWOh
# dsqojRTOuVUCAwEAAaOB8jCB7zAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgw
# BgEB/wIBATAdBgNVHQ4EFgQUQITUq5WRQXJtY3gr0s9UwSYG4V4wHwYDVR0jBBgw
# FoAUhBmeQDPU2LjZSvd0Nsa9FpnYB24wOgYIKwYBBQUHAQEELjAsMCoGCCsGAQUF
# BzABhh5odHRwczovL2RlYXRoc3Rhci5jbmFwLmRzby5taWwwTQYDVR0fBEYwRDBC
# oECgPoY8aHR0cHM6Ly9jdWJieWhvbGUuY25hcC5kc28ubWlsL3YxL3BraS9wMV9p
# bnRfY2EvaW50L2NlcnQvY3JsMA0GCSqGSIb3DQEBCwUAA4ICAQCK34bNPikfKr3b
# EWHX9Ed17eu/Taei/6UAnD6rzm7aOOfRHARWZ5IQwtwSuo7kcRt8Y84at3ITvQBd
# ZAK1o9a1PhavLbb1azf5RodLw1AYgPZezQ3/gsFP6Cy0FS6JOz3rcPwzaLc+G248
# /zjAHWcnX3doNziC+cnxC8+OcgLdGp0WxZ9ZGovkwduduBsNQF+F0rm7VDM/0k0C
# wYjuU0NNY3O7j3K64IvXvMEhjhAieNALhJR5jnyAYMS2IhxiDS5LBHDP9uICWh/j
# xj4+eZ6wJOFCWXhMK/oBRdr/NxIkZa/MaMqezk3aFGdENw2AfXV2DDRjOGTpmnaN
# gxMgXN9b4Ejur5nlWzo6jONoj6aNoIJxlRAiwBi3k3HATNup0qdaACErkbXyGL9V
# UG+1AWspEyRRRlCeFasAwAJ24e6P4RU5chfBm4TU9h+z3VimOThBQp5gsOgQrUO4
# 1tVKC0YSPIX58wOGZZU7mz3fT5H7r7TWK65tNO+uMB88bZaX5prD7//ON/DRJMoI
# dKTgyfCGGG3dMe9+v+IfxeGDUz2DackpuX0GTm2QZkQK4xdi4QBSxU5oa0YtUSE3
# SHSjCJt1DS3YoJZ4zDT7ccr1ABIyNXmO2DKaOONsh3xujwVqxNPubNFMmNdQJ9aw
# 97baCRVnrkfb0G/z5M5NOIjV0hDI7TCCBoIwggRqoAMCAQICFE1jMMMOaXtTWo/9
# s2YXH0VwSRKbMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRgwFgYDVQQK
# Ew9VLlMuIEdvdmVybm1lbnQxEzARBgNVBAsTCkRvRCBQMSBQS0kxJDAiBgNVBAMT
# G0RvRCBQMSBDTkFQIENvZGUgU2lnbmluZyBDQTAeFw0yMjA0MTExOTMwMDNaFw0y
# MzA0MTIwMTE5MTlaMIGaMQswCQYDVQQGEwJVUzERMA8GA1UECBMIQ29sb3JhZG8x
# GTAXBgNVBAcTEENvbG9yYWRvIFNwcmluZ3MxITAfBgNVBAoTGEludGVybmV0IFdp
# ZGdpdHMgUHR5IEx0ZDEeMBwGA1UECxMVRGVwYXJ0bWVudCBvZiBEZWZlbnNlMRow
# GAYDVQQDExFjb2RlLmNuYXAuZHNvLm1pbDCCAiIwDQYJKoZIhvcNAQEBBQADggIP
# ADCCAgoCggIBAMXOBKj6iigKu/vPsAfuN8r7jS/qaSuFPMZzGjHCTizCNxz3vDoF
# MjFtos+ORVo/ztOlpVlDX7XyC2r/2n2FFR24EidHOPAd7IE/7PupsDZTfh+fKjux
# KuH8A0BrhsFZ8AsWqdDz33mCU1vaYX9v6JcSB1LUYI42xk8j9gUDgxxQE1ia0uUS
# ABskn40S8P2teuFrt9bJ5rTE0Xe5IOeZAxL2X4oTRQECxZV3jMnRNSySRLzINB9D
# ZU6C/owi6C+biXzWFWEn0PJe6zqhrC1DGnyoSsD3GNPJRfu3D546GwXxAQteaSTG
# ghX0Q5FwSchcfP4hsRJivV6qRCcJv5VLjsWFITtZGRN02ar5RdbPZfm3hQ+tvYjY
# c8jW1AxXwc+DgEgtJF0Q4owoI3rSlJYfVzsAXmWH6tZgUc2NgtzAjr9xQDfTwlLe
# VPUaR7NAUPYSyJGJNcgEQyYfqyLRrrlf3Tjk2PBbYE+5d95Ic6aQ5OtOtGjx2u/P
# WSFPQ3+ugQ3a9zFyaR+osJFpPtuCQHGro3yFBrOBGiV8vXluo52Aoaq1193z25oc
# 67qIruRBN2o98BFkRSl/Rzm7eETnN6OpKJdR8GNAU+4bN9MZFYWwme1awi2O/HR8
# DzE7RC88/rvSjoD8c9HFfUmEnnogWi8UsG2iZgqsee8qb1P/FDY7ek8LAgMBAAGj
# gfYwgfMwDgYDVR0PAQH/BAQDAgOoMBMGA1UdJQQMMAoGCCsGAQUFBwMDMB0GA1Ud
# DgQWBBRzL5niTf/5zsUAnlFqHdFQHGymYzAfBgNVHSMEGDAWgBQrNkRoeGQ7dwS5
# L5IHW8+CWxLrWDA6BggrBgEFBQcBAQQuMCwwKgYIKwYBBQUHMAGGHmh0dHBzOi8v
# ZGVhdGhzdGFyLmNuYXAuZHNvLm1pbDBQBgNVHR8ESTBHMEWgQ6BBhj9odHRwczov
# L2N1YmJ5aG9sZS5jbmFwLmRzby5taWwvdjEvcGtpL2NuYXBfY29kZXNpZ25fY2Ev
# Y2VydC9jcmwwDQYJKoZIhvcNAQELBQADggIBAI5MiWklPvwXJtAKCvBDroWpCZ6O
# 2+m56RiIWzQfBrnzth+MbFMvWWuiBWbsO37HAdW6GbV/QTtJN21AlyUPGzOMnfX6
# iTz+AFU8ZaptJggIU+2bDYr2v7YE5lrT4Q+VdLdUaw51z5amaNVpMjASt2sMqMkD
# IVlS9APosM+OPgYHj+JhbINQC6BzVcvI/w7XAOOXGY//ZF23ycLGdETg/s3wgtxo
# HYeM0wNWqKB1mZlcbma2gIpTVFUV5/K/g54oT4Rt3xYaqr6TrBnntOWQBHJwoO0b
# /Nxy/tzFjRapt99RHrBPZ2a3gu4xvxW7MEoHlnki1GyJ90ka4yl46LuF/VW8RE+5
# VFZHdXTFXN7zXl9M/txlGhlBBnjQlxQI2ostWRstDgFWYNe9CZmxGZ/6DjDwKLT4
# YffWDoPPIUTxZlLn+YoSoK9xlsKXTecI/l1PXOkj4oKiplz2l7JGV3iLv4BR/pTI
# zIezIfAwOZCfeoMQvqeW5F5iFgHmXSUunBH/f7ra1cDLnYOBV/ppFHM89axUzTE+
# rFB/fMRamnt/rUGN3WbTj0EovGCiZ6vyWRXSfd8rWBp5RfUeU7zqqXPO2hdVMrxp
# N/4WUVIvjPQ6txsoatrSRd1NCd6yGjMPBY351BitBlv+FBgBtgs0U6aELweulHPc
# ftHHSDSpDrq64d6NMYIDGzCCAxcCAQEwejBiMQswCQYDVQQGEwJVUzEYMBYGA1UE
# ChMPVS5TLiBHb3Zlcm5tZW50MRMwEQYDVQQLEwpEb0QgUDEgUEtJMSQwIgYDVQQD
# ExtEb0QgUDEgQ05BUCBDb2RlIFNpZ25pbmcgQ0ECFE1jMMMOaXtTWo/9s2YXH0Vw
# SRKbMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqG
# SIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3
# AgEVMCMGCSqGSIb3DQEJBDEWBBQ1HpLN6DcD0TbBZfVoDGZOJsDAvjANBgkqhkiG
# 9w0BAQEFAASCAgAn/x5FqAiJeOG7KlcvVW1+VTgenzTQtato07R9lRP82UlyA1fi
# JKZOd+OXH0OyB3+6msXFBiF6UzUN9jHexb7nbUJMZS480+XPDb8yu2wnL/Kx7N5o
# pK2XlV/CLqwXhHAula2fOFaWfDcP/irknBmk3cAk8SOoyU1cb8/dABpmoDjesHX0
# QSOLVQZNTI2tLBhkVXC8gxpu3WRxkUV1LrIXgOJ9RFrkHf6iZZ1KGEa1KV6ygBqm
# ik5xLzMactI87/F4WykOl95Ivdm78CjDBCEKcqwcVS2MJhIXLgv8YAE6hP5jFrC0
# M25wshxp6A81DFLFgSrvptJUHs+Cha6+orYJwnjf9+R+pBKJVhvKJBK+q6wISilI
# 81qbMawoZUNMkw6SeHOgDsQw8unXl6SzgqHBkD8XJtS5Ep3HYMSmGXKZm6WhLNH6
# 1g2PPe2C343p/YuzN8v/WDNjqwSCre2cwjjvzCok4mX0bpp0bixVHxzoVxOguydM
# J24eun9kgrklo8MT40QC4frDHKSmy4FMuVtB1kMvqtbH7ooUHGEQvcZmA0G56Fok
# aF2PwMIeijYchd6wfYPKZt0rSqf/kcIjJ0lrB0aY+1G63gUdChXxjxvwdx6TlPRz
# W7MjCu4HiTB2iO2HWe/jnHS3dWTGHGOskyrn479l9SvDBoOp9aYbGxp+gA==
# SIG # End signature block
