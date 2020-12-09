#!/usr/bin/env powershell

#Requires -Version 5

param (
    [Parameter(Mandatory=$true)]
    [string]$Path
)

if (-not (Get-Service "VaultAgent" -ErrorAction SilentlyContinue)) {
    New-Service -Name "VaultAgent" -BinaryPathName $Path -DisplayName "Vault Agent" -StartupType "Automatic"
    Write-Host "Vault Agent service installed"
}