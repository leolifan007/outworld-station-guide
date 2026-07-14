Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
$html = Get-Content "public\guides\drill-upgrade-mining-speed-guide\index.html" -Raw -Encoding UTF8
$pattern = 'sidebar-l2-inner[\s\S]*?</nav>'
$match = [regex]::Match($html, $pattern)
if ($match.Success) {
  $block = $match.Value
  $labels = [regex]::Matches($block, '<span class="l2-title">([^<]+)</span>')
  Write-Host "=== Production category sidebar labels (from drill-upgrade page) ==="
  foreach ($m in $labels) {
    $label = $m.Groups[1].Value.Trim()
    $len = $label.Length
    Write-Host ("  [{0,2} chars] {1}" -f $len, $label)
  }
} else {
  Write-Host "NO sidebar-l2-inner FOUND"
}
