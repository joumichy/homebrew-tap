# Fleury Homebrew tap

This repository contains public Homebrew package metadata for the Fleury CLI.
It does not contain the Fleury source code.

Install the current release:

```bash
brew install joumichy/tap/fleury
```

Upgrade an existing installation:

```bash
brew update
brew upgrade fleury
```

Release automation updates `Formula/fleury.rb` with immutable download URLs and
SHA-256 checksums after the CLI has passed its macOS, Linux, and Windows install
qualification.
