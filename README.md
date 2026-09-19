# howzo — Homebrew tap

Local, zero-model command router. Ask "how do I X" in English, get the tool
that's actually installed on your machine.

- Project: https://github.com/sohailchd/howzo
- Site: https://sohailchd.github.io/howzo/

## Install

```bash
brew tap sohailchd/howzo
brew install howzo
```

Then run `howzo scan` once to index your machine, and ask away:

```bash
howzo list open ports
```

## Bump the version

1. Tag and publish a release on the project repo.
2. Edit `Formula/howzo.rb` (`url` + `version`).
3. `brew style Formula/howzo.rb && brew audit Formula/howzo.rb`
4. Commit + push; the tap rebuilds for users on next `brew install`.
