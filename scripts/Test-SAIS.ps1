$ErrorActionPreference = 'Stop'

$required = @(
    'AGENTS.md',
    'README.md',
    '00_system/SAIS_Architecture.md',
    '01_governance/Policy_Charter.md',
    '01_governance/policies/POL-001_Integrity.md',
    '01_governance/AI_Use_in_Assessment.md',
    '02_institution/profiles/sheffield_management_school/Institutional_Academic_Model.md',
    '02_institution/Sheffield_GenAI_Reference.md',
    '03_workflows/Task_Router.md',
    '03_workflows/Project_Lifecycle.md',
    '03_workflows/Chinese_to_English_Drafting.md',
    '03_workflows/Research_Design.md',
    '03_workflows/dissertation_tracks/Academic_Research.md',
    '03_workflows/dissertation_tracks/Managerial_Problem_Solving.md',
    '04_templates/Academic_Output.md',
    '04_templates/AI_Use_Record.md',
    '04_templates/Source_Verification_Log.md',
    '04_templates/Submission_Readiness.md',
    '04_templates/research/Literature_Synthesis.md',
    '04_templates/knowledge_objects/Theory_Card.md',
    '07_quality_control/Examiner_Review.md',
    '07_quality_control/test_cases/Dissertation_Ethics.md',
    'scripts/New-SAISProject.ps1'
)

$missing = $required | Where-Object { -not (Test-Path $_) }
if ($missing) { throw "Missing required files: $($missing -join ', ')" }

$agentText = Get-Content -Raw -Encoding utf8 'AGENTS.md'
$paths = [regex]::Matches($agentText, '`(?<path>[^`]+\.md)`') |
    ForEach-Object { $_.Groups['path'].Value } |
    Where-Object { $_ -notmatch '<project>' } |
    Sort-Object -Unique
$missingRouterFiles = $paths | Where-Object { -not (Test-Path $_) }
if ($missingRouterFiles) { throw "AGENTS.md references missing files: $($missingRouterFiles -join ', ')" }

$projectScript = Get-Content -Raw -Encoding utf8 'scripts/New-SAISProject.ps1'
if ($projectScript -notmatch 'SupportsShouldProcess') { throw 'Project initializer must support -WhatIf' }
if ($projectScript -notmatch '^[\s\S]*ProjectName must use') { throw 'Project initializer lacks safe name validation' }

$validationProject = '05_projects/sais_validation_project'
if (Test-Path -LiteralPath $validationProject) { throw "Reserved validation project already exists: $validationProject" }
& '.\scripts\New-SAISProject.ps1' -ProjectName 'sais_validation_project' -WhatIf | Out-Null
if (Test-Path -LiteralPath $validationProject) { throw 'Project initializer created files during -WhatIf validation' }

git check-ignore -q '05_projects/example/private/draft.md'
if ($LASTEXITCODE -ne 0) { throw 'Private project material is not ignored' }
git check-ignore -q '06_memory/private/note.md'
if ($LASTEXITCODE -ne 0) { throw 'Private memory material is not ignored' }

Write-Output 'SAIS structure, router references, and privacy rules: OK'
