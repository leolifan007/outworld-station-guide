# PowerShell script to publish unpublished Outworld Station guide articles
# Uses StreamReader/StreamWriter with UTF8 encoding

$ErrorActionPreference = "Stop"
$workspacePath = "C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide"
Set-Location $workspacePath

# Get all guide _index.md files (excluding the main guides/_index.md)
$guideFiles = Get-ChildItem -Path "content\guides" -Filter "_index.md" -Recurse | 
    Where-Object { $_.FullName -notmatch "guides\\_index\.md$" }

Write-Host "Found $($guideFiles.Count) guide files to check..."

# Find unpublished articles (those without publishedAt in front matter)
$unpublishedFiles = @()
foreach ($f in $guideFiles) {
    $filePath = $f.FullName
    $content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)
    
    # Extract front matter between first and second ---
    $frontMatterMatch = [regex]::Match($content, '(?s)^---\s*$(.*?)^---\s*$', [System.Text.RegularExpressions.RegexOptions]::Multiline)
    
    if ($frontMatterMatch.Success) {
        $frontMatter = $frontMatterMatch.Groups[1].Value
        
        # Check if publishedAt is missing
        if ($frontMatter -notmatch '(?m)^publishedAt:') {
            $unpublishedFiles += $filePath
            Write-Host "Unpublished: $filePath"
        } else {
            Write-Host "Already published: $filePath"
        }
    }
}

Write-Host "`nTotal unpublished articles: $($unpublishedFiles.Count)"

if ($unpublishedFiles.Count -eq 0) {
    Write-Host "All published"
    exit 0
}

# Randomly select 1 or 2 articles
$rand = New-Object System.Random
$numToPublish = if ($unpublishedFiles.Count -eq 1) { 1 } else { $rand.Next(1, 3) }
$selectedFiles = $unpublishedFiles | Get-Random -Count $numToPublish

Write-Host "`nPublishing $numToPublish article(s):"
foreach ($f in $selectedFiles) { Write-Host "  - $f" }

# Generate random times (8:00 - 22:59), at least 30 minutes apart if publishing 2
$today = Get-Date -Format "yyyy-MM-dd"
$times = @()

if ($numToPublish -eq 1) {
    $hour = $rand.Next(8, 23)
    $minute = $rand.Next(0, 60)
    $timeStr = "{0:D2}:{1:D2}" -f $hour, $minute
    $times += $timeStr
} else {
    # Generate two times at least 30 minutes apart
    $hour1 = $rand.Next(8, 22)
    $minute1 = $rand.Next(0, 60)
    
    # Second time at least 30 minutes later
    $totalMinutes1 = $hour1 * 60 + $minute1
    $minMinutesApart = 30
    $totalMinutes2 = $rand.Next($totalMinutes1 + $minMinutesApart, 23 * 60 + 59)
    $hour2 = [Math]::Floor($totalMinutes2 / 60)
    $minute2 = $totalMinutes2 % 60
    
    $timeStr1 = "{0:D2}:{1:D2}" -f $hour1, $minute1
    $timeStr2 = "{0:D2}:{1:D2}" -f $hour2, $minute2
    $times += $timeStr1
    $times += $timeStr2
}

# Process each selected file
$articleNames = @()
for ($i = 0; $i -lt $selectedFiles.Count; $i++) {
    $file = $selectedFiles[$i]
    $time = $times[$i]
    $publishedAt = "$today" + "T$time`:00+08:00"
    
    Write-Host "`nProcessing: $file"
    Write-Host "  Adding publishedAt: $publishedAt"
    
    # Read file with UTF8 encoding
    $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
    
    # Extract front matter and body using regex
    $regex = '(?s)^(---\s*$(.*?)^---\s*)(.*)'
    $match = [regex]::Match($content, $regex, [System.Text.RegularExpressions.RegexOptions]::Multiline)
    
    if ($match.Success) {
        $frontMatterFull = $match.Groups[1].Value
        $frontMatter = $match.Groups[2].Value
        $body = $match.Groups[3].Value
        
        # Add publishedAt after the date: line
        $frontMatter = $frontMatter -replace '(?m)^(date:\s*.+)$', "`$1`npublishedAt: $publishedAt"
        
        # Append External Resources section to body
        $externalResources = "`n`n### External Resources`n`n- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)`n- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)`n- [Official Dev News](https://store.steampowered.com/news/app/3242950)`n"
        
        # Check if body ends with --- (likely a shortcode or closing tag)
        if ($body -match '\n---\s*$') {
            $body = $body -replace '\n---\s*$', "$externalResources`n---"
        } else {
            $body += $externalResources
        }
        
        # Reconstruct file
        $newContent = "---$frontMatter---$body"
        
        # Write with UTF8 encoding (no BOM)
        $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
        [System.IO.File]::WriteAllText($file, $newContent, $utf8NoBom)
        
        Write-Host "  Successfully updated: $file"
        
        # Extract article name from path for commit message
        $articleName = Split-Path (Split-Path $file -Parent) -Leaf
        $articleNames += $articleName
    }
}

# Git operations
Write-Host "`nPerforming git operations..."
git add -A

$commitMsg = "Publish guide article(s): " + ($articleNames -join ', ')
Write-Host "Commit message: $commitMsg"

$result = git commit -m $commitMsg 2>&1
Write-Host $result

$result = git push origin main 2>&1
Write-Host $result

Write-Host "`nDone! Published $($articleNames.Count) article(s): $($articleNames -join ', ')"
