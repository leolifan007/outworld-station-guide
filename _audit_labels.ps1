Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
$pages = Get-ChildItem -Path "public\guides\*\index.html" -Recurse
$catMap = @{}
foreach ($p in $pages) {
  $html = Get-Content $p.FullName -Raw -Encoding UTF8
  # category from the section-label span
  $cm = [regex]::Match($html, 'l2-section-label">([^<]+)<')
  $cat = if ($cm.Success) { $cm.Groups[1].Value.Trim() } else { "?" }
  # collect labels from this page's own l2 sidebar
  $lm = [regex]::Match($html, 'sidebar-l2-inner[\s\S]*?</nav>')
  if ($lm.Success) {
    $labels = [regex]::Matches($lm.Value, '<span class="l2-title">([^<]+)</span>') | ForEach-Object { $_.Groups[1].Value.Trim() }
    if (-not $catMap.ContainsKey($cat)) { $catMap[$cat] = [System.Collections.Generic.List[string]]::new() }
    foreach ($l in $labels) { if ($l -and -not $catMap[$cat].Contains($l)) { $catMap[$cat].Add($l) } }
  }
}
foreach ($cat in ($catMap.Keys | Sort-Object)) {
  Write-Host "=== $cat ($(($catMap[$cat]).Count) unique labels) ==="
  $dup = @{}
  foreach ($l in $catMap[$cat]) {
    $count = ($catMap[$cat] | Where-Object { $_ -eq $l }).Count
    Write-Host ("  [{0,2}] {1}" -f $l.Length, $l)
  }
  # flag duplicates
  $seen = @{}
  foreach ($l in $catMap[$cat]) {
    if ($seen[$l]) { Write-Host "  !!! DUPLICATE: $l" }
    $seen[$l] = $true
  }
}
