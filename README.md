# bircni/homebrew-tap

Homebrew formulae and casks for bircni's tools.

## git-statuses

[git-statuses](https://github.com/bircni/git-statuses) shows the status of many Git
repositories in one table.

```sh
brew install bircni/tap/git-statuses
```

The formula installs the prebuilt release binary for macOS (Apple Silicon and Intel) or
Linux (x86_64), along with bash, zsh and fish completions. It is updated automatically by
the git-statuses release workflow.

## opentrack

[opentrack](https://github.com/bircni/aitrack/blob/main/docs/opentrack.md) is the desktop
dashboard for Claude Code, Codex and Cursor limits and spend.

```sh
brew install --cask bircni/tap/opentrack
```

The cask is updated automatically by the aitrack release workflow. opentrack is ad hoc signed
and not notarized, so the cask removes the quarantine flag after installing. The app updates
itself; `brew upgrade --greedy` also upgrades it.
