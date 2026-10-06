# bircni/homebrew-tap

Homebrew casks for [opentrack](https://github.com/bircni/aitrack/blob/main/docs/opentrack.md),
the desktop dashboard for Claude Code, Codex and Cursor limits and spend.

```sh
brew install --cask bircni/tap/opentrack
```

The cask is updated automatically by the aitrack release workflow. opentrack is ad hoc signed
and not notarized, so the cask removes the quarantine flag after installing. The app updates
itself; `brew upgrade --greedy` also upgrades it.
