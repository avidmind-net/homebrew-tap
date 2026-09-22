# Maintaining this tap

## Casks

Casks live in [`Casks/`](Casks/), one Ruby file per app. `memyselfni` (and its
`memyselfni@beta` channel) are published here automatically by the
`publish-homebrew.yml` release workflow in
[apps-me-myself-and-i](https://github.com/avidmind-net/apps-me-myself-and-i) —
you shouldn't need to hand-edit those files.

## Adding a formula (CLI tool)

There's no `Formula/` directory yet — this tap only ships casks so far. If a
CLI tool shows up, create the directory with:

```
brew create --tap avidmind-net/tap <url>
```

then fill in `desc`, `homepage`, `url`, `sha256`, `license`, `install`, and a
`test do` block, and add a `formulae` job back to
[`tests.yml`](.github/workflows/tests.yml) (`brew test-bot --only-formulae`).

## CI

Every push and pull request is linted by
[`tests.yml`](.github/workflows/tests.yml): `brew test-bot` covers tap syntax,
and `brew style`/`brew audit --cask` cover casks (test-bot itself has no cask
support).

## Reference

`brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).
