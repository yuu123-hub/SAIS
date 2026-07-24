$ErrorActionPreference = 'Stop'

$required = @(
    'AGENTS.md',
    'README.md',
    '00_system/SAIS_Architecture.md',
    '00_system/Operational_Readiness.md',
    '01_governance/Policy_Charter.md',
    '01_governance/policies/POL-001_Integrity.md',
    '01_governance/AI_Use_in_Assessment.md',
    '02_institution/profiles/sheffield_management_school/Institutional_Academic_Model.md',
    '02_institution/Sheffield_GenAI_Reference.md',
    '03_knowledge/README.md',
    '03_knowledge/foundations/Management_and_International_Business_Foundations.md',
    '03_knowledge/research_methods/Methods_and_Statistics_Foundations.md',
    '03_knowledge/academic_skills/Criticality_and_Academic_English.md',
    '03_workflows/Task_Router.md',
    '03_workflows/Workflow_Contract.md',
    '03_workflows/Project_Lifecycle.md',
    '03_workflows/Literature_Search_and_Synthesis.md',
    '03_workflows/Chinese_to_English_Drafting.md',
    '03_workflows/Research_Design.md',
    '03_workflows/Data_Analysis.md',
    '03_workflows/Module_Onboarding.md',
    '03_workflows/dissertation_tracks/Academic_Research.md',
    '03_workflows/dissertation_tracks/Managerial_Problem_Solving.md',
    '04_templates/Academic_Output.md',
    '04_templates/AI_Use_Record.md',
    '04_templates/Source_Verification_Log.md',
    '04_templates/Submission_Readiness.md',
    '04_templates/research/Search_Log.md',
    '04_templates/research/Claim_Evidence_Matrix.md',
    '04_templates/research/Data_Analysis_Plan.md',
    '04_templates/research/Quantitative_Result_Record.md',
    '04_templates/research/Qualitative_Analysis_Record.md',
    '04_templates/Module_Source_Register.md',
    '04_templates/research/Literature_Synthesis.md',
    '04_templates/knowledge_objects/Theory_Card.md',
    '06_memory/Memory_Policy.md',
    '07_quality_control/Examiner_Review.md',
    '07_quality_control/System_Audit.md',
    '07_quality_control/test_cases/Dissertation_Ethics.md',
    '07_quality_control/test_cases/Unsupported_Literature_Gap.md',
    '07_quality_control/test_cases/Correlation_Causation.md',
    '07_quality_control/test_cases/Cross_Project_Contamination.md',
    'scripts/New-SAISProject.ps1',
    'scripts/Test-GitScope.ps1',
    'scripts/New-SAISModule.ps1'
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

$markdownFiles = Get-ChildItem -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '\\.git\\' }
$brokenLinks = @()
$badEncoding = @()
foreach ($markdownFile in $markdownFiles) {
    $markdownText = Get-Content -LiteralPath $markdownFile.FullName -Raw -Encoding utf8
    if ($markdownText.Contains([char]0xFFFD)) {
        $badEncoding += $markdownFile.FullName
    }

    foreach ($linkMatch in [regex]::Matches($markdownText, '\[[^\]]+\]\((?<target>[^)]+)\)')) {
        $target = $linkMatch.Groups['target'].Value.Trim('<', '>')
        if ($target -match '^(https?://|mailto:|#|chatgpt-conversation://)') { continue }
        if ($target -match '^[A-Za-z]:\\') {
            $brokenLinks += "$($markdownFile.FullName) -> non-portable absolute path: $target"
            continue
        }

        $targetPath = $target.Split('#')[0]
        if ([string]::IsNullOrWhiteSpace($targetPath)) { continue }
        $resolvedTarget = Join-Path $markdownFile.DirectoryName $targetPath
        if (-not (Test-Path -LiteralPath $resolvedTarget)) {
            $brokenLinks += "$($markdownFile.FullName) -> $target"
        }
    }
}
if ($badEncoding) { throw "UTF-8 replacement characters found in: $($badEncoding -join ', ')" }
if ($brokenLinks) { throw "Broken or non-portable Markdown links: $($brokenLinks -join '; ')" }

$workflowContractHeadings = @('Task Context', 'Required Inputs', 'Method', 'Output', 'Gaps', 'Next Action')
$workflowFiles = Get-ChildItem -LiteralPath '03_workflows' -Recurse -File -Filter '*.md' |
    Where-Object { $_.Name -notin @('Task_Router.md', 'Workflow_Contract.md') }
foreach ($workflowFile in $workflowFiles) {
    $workflowText = Get-Content -LiteralPath $workflowFile.FullName -Raw -Encoding utf8
    $missingHeadings = $workflowContractHeadings | Where-Object {
        $workflowText -notmatch "(?im)^##\s+$([regex]::Escape($_))\s*$"
    }
    if ($missingHeadings) {
        throw "Workflow contract failure in $($workflowFile.FullName): missing $($missingHeadings -join ', ')"
    }
}

$taskRouterText = Get-Content -LiteralPath '03_workflows/Task_Router.md' -Raw -Encoding utf8
$requiredRouteLabels = @(
    'Project Lifecycle',
    'Assignment Analysis',
    'Draft Review',
    'Group Project',
    'Exam and Reflection',
    'Literature Analysis',
    'Literature Search and Synthesis',
    'Research Design',
    'Data Analysis',
    'Dissertation',
    'Presentation',
    'Supervisor Meeting',
    'Chinese-to-English Drafting',
    'Pre-arrival and Growth',
    'Module Onboarding'
)
$missingRouteLabels = $requiredRouteLabels | Where-Object { $taskRouterText -notmatch [regex]::Escape($_) }
if ($missingRouteLabels) { throw "Task Router is missing workflow coverage: $($missingRouteLabels -join ', ')" }

$projectScript = Get-Content -Raw -Encoding utf8 'scripts/New-SAISProject.ps1'
if ($projectScript -notmatch 'SupportsShouldProcess') { throw 'Project initializer must support -WhatIf' }
if ($projectScript -notmatch '^[\s\S]*ProjectName must use') { throw 'Project initializer lacks safe name validation' }

$registryText = Get-Content -LiteralPath '00_system/registries/Module_Registry.md' -Raw -Encoding utf8
$registryIds = [regex]::Matches($registryText, '(?m)^\|\s*(?<id>[A-Z]+-\d+)\s*\|') |
    ForEach-Object { $_.Groups['id'].Value }
$duplicateRegistryIds = $registryIds | Group-Object | Where-Object { $_.Count -gt 1 }
if ($duplicateRegistryIds) { throw "Duplicate module registry IDs: $(($duplicateRegistryIds.Name) -join ', ')" }

$versionText = Get-Content -LiteralPath '00_system/Version.md' -Raw -Encoding utf8
$versionMatch = [regex]::Match($versionText, 'System:\s+SAIS v(?<version>\d+\.\d+\.\d+)')
if (-not $versionMatch.Success) { throw 'Unable to parse SAIS version' }
$changelogText = Get-Content -LiteralPath 'CHANGELOG.md' -Raw -Encoding utf8
if ($changelogText -notmatch "(?m)^## v$([regex]::Escape($versionMatch.Groups['version'].Value))\b") {
    throw "CHANGELOG.md has no entry for SAIS v$($versionMatch.Groups['version'].Value)"
}

$validationProject = '05_projects/sais_validation_project'
if (Test-Path -LiteralPath $validationProject) { throw "Reserved validation project already exists: $validationProject" }
& '.\scripts\New-SAISProject.ps1' -ProjectName 'sais_validation_project' -WhatIf | Out-Null
if (Test-Path -LiteralPath $validationProject) { throw 'Project initializer created files during -WhatIf validation' }

$validationModule = '02_institution/modules/sais_validation_module'
if (Test-Path -LiteralPath $validationModule) { throw "Reserved validation module already exists: $validationModule" }
& '.\scripts\New-SAISModule.ps1' -ModuleSlug 'sais_validation_module' -ModuleCode 'TEST000' -ModuleTitle 'Validation Module' -WhatIf | Out-Null
if (Test-Path -LiteralPath $validationModule) { throw 'Module initializer created files during -WhatIf validation' }

git check-ignore -q '05_projects/example/private/draft.md'
if ($LASTEXITCODE -ne 0) { throw 'Private project material is not ignored' }
git check-ignore -q '06_memory/private/note.md'
if ($LASTEXITCODE -ne 0) { throw 'Private memory material is not ignored' }
git check-ignore -q '05_projects/example/materials/article.txt'
if ($LASTEXITCODE -ne 0) { throw 'Academic source material is not ignored by default' }
git check-ignore -q '05_projects/example/materials/.gitkeep'
if ($LASTEXITCODE -eq 0) { throw 'Project materials .gitkeep should remain trackable' }
git check-ignore -q '02_institution/modules/example/source_materials/handbook.txt'
if ($LASTEXITCODE -ne 0) { throw 'Module source material is not ignored by default' }
git check-ignore -q '02_institution/modules/example/source_materials/.gitkeep'
if ($LASTEXITCODE -eq 0) { throw 'Module source-material .gitkeep should remain trackable' }

Write-Output 'SAIS structure, router references, and privacy rules: OK'
