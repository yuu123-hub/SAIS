[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectName,

    [string]$ModuleCode = 'To confirm',

    [string]$AssessmentType = 'To confirm',

    [string]$Deadline = 'To confirm',

    [ValidateSet('Practice', 'Permitted with conditions', 'AI-Free', 'Policy unknown')]
    [string]$AIUseStatus = 'Policy unknown'
)

$ErrorActionPreference = 'Stop'

if ($ProjectName -notmatch '^[a-z0-9][a-z0-9_]{2,63}$') {
    throw 'ProjectName must use 3-64 lowercase letters, numbers, and underscores, beginning with a letter or number.'
}

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$projectsRoot = Join-Path $repositoryRoot '05_projects'
$projectPath = Join-Path $projectsRoot $ProjectName

if (Test-Path -LiteralPath $projectPath) {
    throw "Project already exists: $projectPath"
}

$contextTemplate = Join-Path $repositoryRoot '04_templates\Project_Context.md'
$sourceTemplate = Join-Path $repositoryRoot '04_templates\Source_Verification_Log.md'
$readinessTemplate = Join-Path $repositoryRoot '04_templates\Submission_Readiness.md'

foreach ($template in @($contextTemplate, $sourceTemplate, $readinessTemplate)) {
    if (-not (Test-Path -LiteralPath $template)) {
        throw "Required template is missing: $template"
    }
}

if ($PSCmdlet.ShouldProcess($projectPath, 'Create SAIS assessed-project scaffold')) {
    New-Item -ItemType Directory -Path $projectPath | Out-Null

    foreach ($directory in @('materials', 'notes', 'private', 'drafts', 'feedback', 'submissions', 'data')) {
        New-Item -ItemType Directory -Path (Join-Path $projectPath $directory) | Out-Null
    }

    Copy-Item -LiteralPath $contextTemplate -Destination (Join-Path $projectPath 'Project_Context.md')
    Copy-Item -LiteralPath $sourceTemplate -Destination (Join-Path $projectPath 'Source_Verification_Log.md')
    Copy-Item -LiteralPath $readinessTemplate -Destination (Join-Path $projectPath 'Submission_Readiness.md')

    $contextPath = Join-Path $projectPath 'Project_Context.md'
    $context = Get-Content -LiteralPath $contextPath -Raw -Encoding utf8
    $context = $context.Replace('- Project name:', "- Project name: $ProjectName")
    $context = $context.Replace('- Module code and title:', "- Module code and title: $ModuleCode")
    $context = $context.Replace('- Assessment type:', "- Assessment type: $AssessmentType")
    $context = $context.Replace('- Deadline and timezone:', "- Deadline and timezone: $Deadline")
    $context = $context.Replace('- AI-use policy:', "- AI-use policy: $AIUseStatus")
    $context = $context.Replace('- Stage:', '- Stage: Intake')
    $context = $context.Replace('- Next action:', '- Next action: Add the brief and rubric, then run Assignment Analysis.')
    $context = $context.Replace('- Last updated:', "- Last updated: $(Get-Date -Format 'yyyy-MM-dd')")
    Set-Content -LiteralPath $contextPath -Value $context -Encoding utf8

    @"
# $ProjectName

## Start here

1. Add safe-to-sync task materials to ``materials/``.
2. Keep drafts, personal data, feedback, raw data, and submissions in their named private folders; Git ignores them.
3. Complete ``Project_Context.md``.
4. Ask Codex: ``Analyse the materials in 05_projects/$ProjectName and create a research plan.``

## Current control files

- ``Project_Context.md`` — authoritative project state.
- ``Source_Verification_Log.md`` — evidence and citation checks.
- ``Submission_Readiness.md`` — final pre-submission gate.
"@ | Set-Content -LiteralPath (Join-Path $projectPath 'README.md') -Encoding utf8

    New-Item -ItemType File -Path (Join-Path $projectPath 'materials\.gitkeep') | Out-Null
    New-Item -ItemType File -Path (Join-Path $projectPath 'notes\.gitkeep') | Out-Null

    Write-Output "Created SAIS project: $projectPath"
    Write-Output "Next: add the brief and rubric, then complete Project_Context.md."
}
