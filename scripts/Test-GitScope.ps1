[CmdletBinding()]
param(
    [switch]$AllowSensitive
)

$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repositoryRoot
try {
    $stagedFiles = @(git diff --cached --name-only --diff-filter=ACMR)
    if ($LASTEXITCODE -ne 0) {
        throw 'Unable to inspect the staged Git scope.'
    }

    if ($stagedFiles.Count -eq 0) {
        Write-Output 'Git scope safety: no staged files.'
        exit 0
    }

    $sensitivePathPattern = '(?i)(^|/)(private|drafts|submissions|data|feedback|materials|source_materials|raw_interviews)(/|$)'
    $sensitiveExtensionPattern = '(?i)\.(pdf|docx|xlsx|pptx|csv|tsv|sav|dta|rdata|rds|zip|7z)$'
    $sensitiveNamePattern = '(?i)(interview|transcript|participant|respondent|confidential|unpublished)'

    $blockedFiles = @($stagedFiles | Where-Object {
        $_ -match $sensitivePathPattern -or
        $_ -match $sensitiveExtensionPattern -or
        $_ -match $sensitiveNamePattern
    })

    if ($blockedFiles.Count -gt 0 -and -not $AllowSensitive) {
        throw "Sensitive or academic material requires explicit approval before commit: $($blockedFiles -join ', ')"
    }

    if ($blockedFiles.Count -gt 0) {
        Write-Output "Git scope safety: explicit sensitive override active for $($blockedFiles.Count) path(s)."
    } else {
        Write-Output "Git scope safety: OK ($($stagedFiles.Count) staged file(s), no sensitive paths detected)."
    }
}
finally {
    Pop-Location
}
