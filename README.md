# TakeFromMendingPatch — build kit

--Ready to use patch is here: https://github.com/kebabebak/HSK-Take-From-Mending-Patch

Files to compile `TakeFromMendingPatch.dll` for RimWorld HSK 1.5.

## Requirements

- [.NET SDK](https://dotnet.microsoft.com/download) (builds `net48`)
- Five reference DLLs in `libs/`

## Build

```powershell
.\build.ps1
```

Or:

```powershell
dotnet build TakeFromMendingPatch.csproj -c Release
```

Output: `out\TakeFromMendingPatch.dll`
