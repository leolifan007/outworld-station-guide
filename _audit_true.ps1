Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
# Map each article (slug) to its generated label, grouped by category
$art = Get-ChildItem -Path "content\guides\*\index.md" -Recurse
$map = @{}
foreach ($f in $art) {
  $lines = Get-Content $f.FullName -Encoding UTF8
  $title = ""; $cat = ""
  foreach ($l in $lines) {
    if ($l -match '^title:\s*"(.*)"') { $title = $Matches[1] }
    if ($l -match '^category:\s*(\S+)') { $cat = $Matches[1] }
    if ($title -and $cat) { break }
  }
  $map[$f.Directory.Name] = @{ title=$title; cat=$cat }
}
# Now read each built page's OWN label (the active l2-link)
$pages = Get-ChildItem -Path "public\guides\*\index.html" -Recurse
$slugLabel = @{}
foreach ($p in $pages) {
  $html = Get-Content $p.FullName -Raw -Encoding UTF8
  $m = [regex]::Match($html, 'l2-link active">[\s\S]*?<span class="l2-title">([^<]+)</span>')
  if ($m.Success) {
    $slug = $p.Directory.Name
    $slugLabel[$slug] = $m.Groups[1].Value.Trim()
  }
}
# Group by category, find duplicate labels
$byCat = @{}
foreach ($slug in $slugLabel.Keys) {
  $cat = $map[$slug].cat
  $label = $slugLabel[$slug]
  if (-not $byCat.ContainsKey($cat)) { $byCat[$cat] = @{} }
  if (-not $byCat[$cat].ContainsKey($label)) { $byCat[$cat][$label] = @() }
  $byCat[$cat][$label] += $slug
}
$found = $false
foreach ($cat in ($byCat.Keys | Sort-Object)) {
  foreach ($label in ($byCat[$cat].Keys | Sort-Object)) {
    $slugs = $byCat[$cat][$label]
    if ($slugs.Count -gt 1) {
      $found = $true
      Write-Host "DUPLICATE in [$cat]: label '$label' used by:"
      foreach ($s in $slugs) {
        Write-Host ("    $s  <-  '$($map[$s].title)'")
      }
    }
  }
}
if (-not $found) { Write-Host "No intra-category duplicate labels." }
