Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
$pages = Get-ChildItem -Path "public\guides\*\index.html" -Recurse
$catMap = @{}
foreach ($p in $pages) {
  $html = Get-Content $p.FullName -Raw -Encoding UTF8
  $cm = [regex]::Match($html, 'l2-section-label">([^<]+)<')
  $cat = if ($cm.Success) { $cm.Groups[1].Value.Trim() } else { "?" }
  $lm = [regex]::Match($html, 'sidebar-l2-inner[\s\S]*?</nav>')
  if ($lm.Success) {
    $labels = [regex]::Matches($lm.Value, '<span class="l2-title">([^<]+)</span>') | ForEach-Object { $_.Groups[1].Value.Trim() }
    if (-not $catMap.ContainsKey($cat)) { $catMap[$cat] = [System.Collections.Generic.List[string]]::new() }
    foreach ($l in $labels) { if ($l) { $catMap[$cat].Add($l) } }
  }
}
$totalDup = 0
foreach ($cat in ($catMap.Keys | Sort-Object)) {
  $labels = $catMap[$cat]
  $groups = $labels | Group-Object | Where-Object { $_.Count -gt 1 }
  if ($groups) {
    Write-Host "=== $cat : DUPLICATES FOUND ==="
    foreach ($g in $groups) {
      Write-Host ("  '{0}' appears {1}x" -f $g.Name, $g.Count)
      $totalDup++
    }
  }
}
if ($totalDup -eq 0) { Write-Host "NO intra-category duplicates found." }
