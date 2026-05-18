# Publish unfinished Outworld Station guide articles
$ErrorActionPreference = "Stop"

Set-Location "C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide"

# Unpublished articles
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

# Random select 1 or 2
$rng = New-Object System.Random
$num = $rng.Next(1, 3)
$selected = $files | Get-Random -Count $num

Write-Host "Publishing $num article(s):"
$selected | ForEach-Object { Write-Host "  $_" }

# Generate random times
$today = "2026-05-18"
$times = @()
if ($num -eq 1) {
    $h = $rng.Next(8, 23)
    $m = $rng.Next(0, 60)
    $times += "$($h.ToString('00')):$($m.ToString('00'))"
} else {
    $h1 = $rng.Next(8, 22)
    $m1 = $rng.Next(0, 60)
    $t1 = $h1 * 60 + $m1
    $t2 = $rng.Next($t1 + 30, 23 * 60 + 59)
    $h2 = [Math]::Floor($t2 / 60)
    $m2 = $t2 % 60
    $times += "$($h1.ToString('00')):$($m1.ToString('00'))"
    $times += "$($h2.ToString('00')):$($m2.ToString('00'))"
}

# Process files
$names = @()
for ($i = 0; $i -lt $selected.Count; $i++) {
    $fp = $selected[$i]
    $pub = "$today" + "T" + $times[$i] + ":00+08:00"
    
    Write-Host "`nProcessing: $fp"
    Write-Host "  publishedAt: $pub"
    
    # Read with StreamReader
    $sr = New-Object System.IO.StreamReader($fp, [System.Text.Encoding]::UTF8)
    $txt = $sr.ReadToEnd()
    $sr.Close()
    
    # Find front matter (between --- and ---)
    $pattern = '(?s)^(---\s*$\n)(.*?)^(---\s*$\n)(.*)'
    $m = [regex]::Match($txt, $pattern, [System.Text.RegularExpressions.RegexOptions]::Multiline)
    
    if ($m.Success) {
        $fmStart = $m.Groups[1].Value
        $fm = $m.Groups[2].Value
        $fmEnd = $m.Groups[3].Value
        $body = $m.Groups[4].Value
        
        # Add publishedAt after date line
        $fm = $fm -replace '(?m)^(date:\s*.+)$', "`$1`npublishedAt: $pub"
        
        # Add External Resources
        $ext = "`n`n### External Resources`n`n- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)`n- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)`n- [Official Dev News](https://store.steampowered.com/news/app/3242950)`n"
        $body = $body + $ext
        
        # Reconstruct
        $newTxt = $fmStart + $fm + $fmEnd + $body
        
        # Write with StreamWriter (UTF8 no BOM)
        $enc = New-Object System.Text.UTF8Encoding($false)
        $sw = New-Object System.IO.StreamWriter($fp, $false, $enc)
        $sw.Write($newTxt)
        $sw.Close()
        
        Write-Host "  Updated!"
        $names += (Split-Path (Split-Path $fp -Parent) -Leaf)
    }
}

# Git
Write-Host "`nGit commit and push..."
git add -A
$msg = "Publish guide: " + ($names -join ', ')
git commit -m $msg
git push origin main

Write-Host "`nDone! Published: $($names -join ', ')"
