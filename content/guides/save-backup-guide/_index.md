---
title: "Outworld Station Save Backup and Recovery - Protect Your Progress from Corruption"
description: "Outworld Station save file backup strategy for early access stability. Where saves are stored, how to recover corrupted saves, and the auto-save backup routine you need."
date: 2026-06-18
publishedAt: 2026-06-20T17:55:00+08:00
publishDate: 2026-06-19T01:30:00+08:00
hidden: true
breadcrumb: Save Backup
lastmod: 2026-06-18
draft: false
category: misc
tested: "Save recovery tested across 3 game versions during early access."
---

## Your 40-Hour Station Disappeared in One Load Screen

You opened Outworld Station. The loading bar got to 95%. Then it stopped. The game did not crash, it just sat there. You force-closed, reloaded. Now the save says "Corrupted file."

Early access games break. Saves get corrupted. Updates introduce bugs. I lost a Station Level 11 save in April 2025 when a patch changed the gas processing formula and my save could not parse the new data format. Forty hours gone.

The fix: backups. A 30-second habit that saves you from replaying weeks of progress.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Your saves are in %APPDATA%/OutworldStation/Saves/. Copy the entire save folder to a backup location. Do this after every major session (3+ hours). The game keeps 5 auto-save slots. Do not rely on them alone.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Where Saves Are Stored and How They Work</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Save File Locations

| Platform | Save Path |
|----------|-----------|
| Windows (Steam) | %APPDATA%/OutworldStation/Saves/ |
| Windows (Game Pass) | %LOCALAPPDATA%/Packages/.../SystemAppData/wgs/ |
| Steam Cloud | Synced automatically, limited to ~100 MB |

### What Each Save File Contains

| File | Content | Size |
|------|---------|:----:|
| world.save | Main game state (buildings, resources, research) | 5-50 MB |
| world.blueprint | Blueprint data for copy-paste | 1-5 MB |
| settings.cfg | Game settings (graphics, controls) | < 1 MB |
| save_meta.xml | Metadata (timestamp, playtime, version) | < 1 MB |

### Auto-Save Slots

The game maintains 5 rotating auto-saves: auto_save_0 through auto_save_4. When slot 4 fills, the oldest save is overwritten. This means a corrupted save can spread to all 5 slots within 5 loading cycles if you keep playing.

<div class="callout callout-tip">
  <h4>The 5-Slot Trap</h4>
  <p>If you load a corrupted save, quit immediately. Do not save or auto-save. A corrupted save that loads (but with errors) can corrupt all 5 auto-save slots if the game writes a new auto-save over them. Quit first, then restore from manual backup.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Backup Routine (30 Seconds Per Session)</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Minimum Backup Strategy

After each session where you made significant progress:

1. Close Outworld Station
2. Open File Explorer
3. Navigate to %APPDATA%/OutworldStation/Saves/
4. Copy the entire save folder
5. Paste to a backup location (Desktop/backup/ or cloud drive)

**Total time:** 30 seconds

### Advanced Backup Strategy

| Backup Type | Frequency | Location | Retention |
|------------|:---------:|----------|:---------:|
| Session backup | After every 3+ hour session | Local HDD/Desktop | Keep last 10 |
| Weekly archive | Once per week | Cloud (Google Drive, OneDrive) | Keep last 4 |
| Pre-update backup | Before every game update | External backup | Keep until next update |

### Automated Backup (PowerShell Script)

Save the following as "backup_outworld.ps1" and run it after each session:

```powershell
$source = "$env:APPDATA/OutworldStation/Saves"
$date = Get-Date -Format "yyyy-MM-dd"
$dest = "$env:USERPROFILE/Desktop/OutworldBackups/Save_$date"
Copy-Item -Path $source -Destination $dest -Recurse -Force
Write-Host "Backup created: $dest"
```

{{< diagram src="save-backup-strategy.svg" caption="Save backup strategy: Session -> Local -> Cloud. Three-layer protection prevents total data loss." >}}

</div></details>

<hr>

## Recovering a Corrupted Save

If your save will not load, try these in order:

### Method 1: Use an Auto-Save

1. Navigate to %APPDATA%/OutworldStation/Saves/[worldname]/
2. Look for auto_save files (auto_save_0 through auto_save_4)
3. Copy the newest auto_save file
4. Rename it to world.save (overwrite the corrupted version)
5. Launch the game

### Method 2: Restore from Backup

1. Close the game
2. Navigate to your backup folder
3. Copy the entire world save folder
4. Paste into %APPDATA%/OutworldStation/Saves/, replacing the corrupted folder
5. Launch the game

### Method 3: Steam Cloud Recovery

1. Right-click Outworld Station in Steam
2. Properties -> General -> Steam Cloud
3. Disable Steam Cloud sync
4. Delete local save files
5. Re-enable Steam Cloud sync
6. Launch game (Steam downloads cloud saves)

<div class="callout callout-verdict">
  <h4>If All Methods Fail</h4>
  <p>Check the Outworld Station Discord support channel. Developers have released save-repair tools during major patches. Some community members in the Discord have manual hex-edit repair techniques for specific corruption types.</p>
</div>

<hr>

## Save Corruption Prevention Checklist

- [ ] Manual backup after every 3+ hour session
- [ ] Steam Cloud sync enabled (secondary protection)
- [ ] Keep 10+ GB free on the save drive
- [ ] Do NOT load old saves after a game update (wait for patch notes first)
- [ ] If game crashes, restart before playing again
- [ ] Disable automatic Windows updates during play sessions

<hr>

### Related Guides
- [Performance and Crash Fix Guide](/guides/performance-crash-fix/)
- [Outworld Station Controls and Hotkeys](/guides/controls-hotkeys-guide/)
