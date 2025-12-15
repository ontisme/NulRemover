# NulRemover

One-liner to nuke those pesky `nul` ghost files on Windows.

```bat
powershell -c "iex (irm https://raw.githubusercontent.com/ontisme/NulRemover/main/nul-remover.ps1)"
```

> 💡 Works in **CMD**, **PowerShell**, **Windows Terminal** — just paste and run.

## Why does this exist?

AI coding assistants sometimes write Unix-style commands on Windows, creating undeletable `nul` files.

When tools redirect output using Unix syntax:
```bash
command > /dev/null 2>&1  # Unix style
```

Windows interprets `nul` as a **literal filename** instead of the null device.

These files are **impossible to delete normally** — Windows reserves `nul` since MS-DOS era.

This script uses the `\\?\` extended path prefix to bypass the reserved name check.

## Related

- 🐛 [Claude Code Issue #4928](https://github.com/anthropics/claude-code/issues/4928)

## License

MIT
