Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
# Pick one representative page per category and dump its l2 sidebar labels + inline pills
$pages = @{
  "production"   = "public\guides\drill-upgrade-mining-speed-guide\index.html"
  "automation"   = "public\guides\drone-defense-guide\index.html"
  "research"     = "public\guides\research-guide\index.html"
  "combat"       = "public\guides\combat-guide\index.html"
  "logistics"    = "public\guides\freighter-mining-guide\index.html"
  "getting-started" = "public\guides\beginner-guide\index.html"
}
foreach ($cat in $pages.Keys) {
  $html = Get-Content $pages[$cat] -Raw -Encoding UTF8
  $m = [regex]::Match($html, 'sidebar-l2-inner[\s\S]*?</nav>')
  Write-Host "=== [$cat] sidebar ==="
  if ($m.Success) {
    [regex]::Matches($m.Value, '<span class="l2-title">([^<]+)</span>') | ForEach-Object {
      $label = $_.Groups[1].Value.Trim()
      Write-Host ("  [{0,2}] {1}" -f $label.Length, $label)
    }
  }
  $im = [regex]::Match($html, 'l2-inline-nav[\s\S]*?</nav>')
  Write-Host "=== [$cat] inline pills ==="
  if ($im.Success) {
    [regex]::Matches($im.Value, 'class="l2-inline-pill[^"]*">\s*([^<]+)') | ForEach-Object {
      $label = $_.Groups[1].Value.Trim()
      Write-Host ("  [{0,2}] {1}" -f $label.Length, $label)
    }
  }
  Write-Host ""
}
