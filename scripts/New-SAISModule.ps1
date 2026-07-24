[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory = $true)]
    [string]$ModuleSlug,

    [Parameter(Mandatory = $true)]
    [string]$ModuleCode,

    [Parameter(Mandatory = $true)]
    [string]$ModuleTitle,

    [string]$AcademicYear = 'To confirm'
)

$ErrorActionPreference = 'Stop'

if ($ModuleSlug -notmatch '^[a-z0-9][a-z0-9_]{2,63}$') {
    throw 'ModuleSlug must use 3-64 lowercase letters, numbers, and underscores, beginning with a letter or number.'
}
if ([string]::IsNullOrWhiteSpace($ModuleCode) -or [string]::IsNullOrWhiteSpace($ModuleTitle)) {
    throw 'ModuleCode and ModuleTitle must come from an official source.'
}

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$modulesRoot = Join-Path $repositoryRoot '02_institution\modules'
$modulePath = Join-Path $modulesRoot $ModuleSlug

if (Test-Path -LiteralPath $modulePath) {
    throw "Module already exists: $modulePath"
}

$profileTemplate = Join-Path $repositoryRoot '04_templates\Module_Profile.md'
$sourceRegisterTemplate = Join-Path $repositoryRoot '04_templates\Module_Source_Register.md'
$performanceContractTemplate = Join-Path $repositoryRoot '04_templates\Module_Performance_Contract.md'
foreach ($template in @($profileTemplate, $sourceRegisterTemplate, $performanceContractTemplate)) {
    if (-not (Test-Path -LiteralPath $template)) {
        throw "Required template is missing: $template"
    }
}

if ($PSCmdlet.ShouldProcess($modulePath, 'Create SAIS module scaffold')) {
    New-Item -ItemType Directory -Path $modulePath | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $modulePath 'source_materials') | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $modulePath 'notes') | Out-Null

    Copy-Item -LiteralPath $profileTemplate -Destination (Join-Path $modulePath 'Module_Profile.md')
    Copy-Item -LiteralPath $sourceRegisterTemplate -Destination (Join-Path $modulePath 'Module_Source_Register.md')
    Copy-Item -LiteralPath $performanceContractTemplate -Destination (Join-Path $modulePath 'Module_Performance_Contract.md')

    $profilePath = Join-Path $modulePath 'Module_Profile.md'
    $profile = Get-Content -LiteralPath $profilePath -Raw -Encoding utf8
    $profile = $profile.Replace('- Academic year:', "- Academic year: $AcademicYear")
    $profile = $profile.Replace('- Module code and title:', "- Module code and title: $ModuleCode — $ModuleTitle")
    $profile = $profile.Replace('- Date imported:', "- Date imported: $(Get-Date -Format 'yyyy-MM-dd')")
    $profile = $profile.Replace('- Imported by:', '- Imported by: SAIS module onboarding; facts require source verification')
    Set-Content -LiteralPath $profilePath -Value $profile -Encoding utf8

    $registerPath = Join-Path $modulePath 'Module_Source_Register.md'
    $register = Get-Content -LiteralPath $registerPath -Raw -Encoding utf8
    $register = $register.Replace('- Module code and title:', "- Module code and title: $ModuleCode — $ModuleTitle")
    $register = $register.Replace('- Academic year:', "- Academic year: $AcademicYear")
    $register = $register.Replace('- Last reviewed:', "- Last reviewed: $(Get-Date -Format 'yyyy-MM-dd')")
    Set-Content -LiteralPath $registerPath -Value $register -Encoding utf8

    $contractPath = Join-Path $modulePath 'Module_Performance_Contract.md'
    $contract = Get-Content -LiteralPath $contractPath -Raw -Encoding utf8
    $contract = $contract.Replace('- Module code and title:', "- Module code and title: $ModuleCode — $ModuleTitle")
    $contract = $contract.Replace('- Academic year:', "- Academic year: $AcademicYear")
    Set-Content -LiteralPath $contractPath -Value $contract -Encoding utf8

    New-Item -ItemType File -Path (Join-Path $modulePath 'source_materials\.gitkeep') | Out-Null
    New-Item -ItemType File -Path (Join-Path $modulePath 'notes\.gitkeep') | Out-Null

    @"
# $ModuleCode — $ModuleTitle

This profile is empty until populated from current official material.

1. Store access-controlled originals in ``source_materials/``.
2. Register each source in ``Module_Source_Register.md``.
3. Extract only verified facts into ``Module_Profile.md``.
4. Link assessment projects from ``05_projects/``.
"@ | Set-Content -LiteralPath (Join-Path $modulePath 'README.md') -Encoding utf8

    Write-Output "Created SAIS module: $modulePath"
    Write-Output 'Next: add and register the current official handbook or module guide.'
}
