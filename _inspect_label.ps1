Set-Location C:\Users\ROG\.qclaw\workspace-agent-d2068023\outworld-station-guide
$html = Get-Content "public\guides\drill-upgrade-mining-speed-guide\index.html" -Raw -Encoding UTF8
$pattern = '<span class="l2-title">([^<]+)</span>'
$match = [regex]::Match($html, $pattern)
if ($match.Success) {
  $label = $match.Groups[1].Value
  $bytes = [System.Text.Encoding]::UTF8.GetBytes($label)
  Write-Host "Label bytes count: $($bytes.Length)"
  Write-Host "Label content: [$label]"
  Write-Host "Hex bytes:"
  $hex = ($bytes | ForEach-Object { $_.ToString('X2') }) -join ' '
  Write-Host "  $hex"
  Write-Host "Codepoints:"
  foreach ($c in $label.ToCharArray()) {
    Write-Host "  U+$([int]$c.ToString('X4')) ($([int]$c)) '$c'"
  }
} else {
  Write-Host "NO MATCH"
}
