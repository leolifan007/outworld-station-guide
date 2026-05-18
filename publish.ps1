# Simple script to publish 1-2 random unpublished articles
$workspace = "C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide"
Set-Location $workspace

# List of unpublished files found earlier
$files = @(
    "content\guides\antimatter-power-guide\_index.md",
    "content\guides\beginner-mistakes\_index.md",
    "content\guides\drone-defense-guide\_index.md",
    "content\guides\freighter-mining-guide\_index.md",
    "content\guides\fusion-reactor-guide\_index.md",
    "content\guides\performance-crash-fix\_index.md",
    "content\guides\pipe-bottleneck-guide\_index.md",
    "content\guides\research-order\_index.md",
    "content\guides\ship-building\_index.md",
    "content\guides\superalloy-guide\_index.md",
    "content\guides\tier-list\_index.md",
    "content\guides\wormhole-terminal-guide\_index.md"
)

# Randomly select 1 or 2
$rand = New-Object System.Random
$count = $rand.Next(1, 3)
$selected = $files | Get-Random -Count $count

Write-Host "Publishing $count article(s):"
$selected | ForEach-Object { Write-Host "  $_" }

# Generate times
$today = "2026-05-18"
$times = @()
if ($count -eq 1) {
    $h = $rand.Next(8, 23)
    $m = $rand.Next(0, 60)
    $times += "{0:D2}:{1:D2}" -f $h, $m
} else {
    $h1 = $rand.Next(8, 22)
    $m1 = $rand.Next(0, 60)
    # Ensure second time is at least 30 min later
    $totalMin1 = $h1 * 60 + $m1
    $totalMin2 = $rand.Next($totalMin1 + 30, 23 * 60 + 59)
    $h2 = [Math]::Floor($totalMin2 / 60)
    $m2 = $totalMin2 % 60
    $times += "{0:D2}:{1:D2}" -f $h1, $m1
    $times += "{0:D2}:{1:D2}" -f $h2, $m2
}

# Process each file
$articleNames = @()
for ($i = 0; $i -lt $selected.Count; $i++) {
    $filePath = $selected[$i]
    $time = $times[$i]
    $publishedAt = "$today" + "T$time`:00+08:00"
    
    Write-Host "`nProcessing: $filePath"
    Write-Host "  publishedAt: $publishedAt"
    
    # Read file
    $sr = New-Object System.IO.StreamReader($filePath, [System.Text.Encoding]::UTF8)
    $content = $sr.ReadToEnd()
    $sr.Close()
    
    # Find front matter (between --- and ---)
    $pattern = '(?s)(^---\s*$\n)(.*?)(^---\s*$\n)(.*)'
    $m = [regex]::Match($content, $pattern, [System.Text.RegularExpressions.RegexOptions]::Multiline)
    
    if ($m.Success) {
        $fmStart = $m.Groups[1].Value  # ---
        $fm = $m.Groups[2].Value       # front matter content
        $fmEnd = $m.Groups[3].Value    # ---
        $body = $m.Groups[4].Value     # rest of file
        
        # Add publishedAt after date line
        $fm = $fm -replace '(?m)^(date:\s*.+)$', "`$1`npublishedAt: $publishedAt"
        
        # Add External Resources to body
        $extResources = "`n`n### External Resources`n`n- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)`n- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)`n- [Official Dev News](https://store.steampowered.com/news/app/3242950)`n"
        $body = $body + $extResources
        
        # Reconstruct
        $newContent = $fmStart + $fm + $fmEnd + $body
        
        # Write back
        $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
        $sw = New-Object System.IO.StreamWriter($filePath, $false, $utf8NoBom)
        $sw.Write($newContent)
        $sw.Close()
        
        Write-Host "  Updated successfully"
        
        # Get article name for commit
        $articleNames += (Split-Path (Split-Path $filePath -Parent) -Leaf)
    }
}

# Git operations
Write-Host "`nGit add -A"
git add -A

$msg = "Publish guide article(s): " + ($articleNames -join ', ')
Write-Host "Git commit: $msg"
git commit -m $msg

Write-Host "Git push"
git push origin main

Write-Host "`nDone! Published: $($articleNames -join ', ')"
