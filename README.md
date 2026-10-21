# homebrew-token-finops

Homebrew tap for [`token-finops-cli`](https://github.com/oh-my-agent-code/token-finops-cli) —
read-only, local-first token usage and budget-runway tracker for AI coding agents.

```bash
brew tap qvest-ssels/token-finops
brew install token-finops-cli
```

The formula builds from the published PyPI sdist (the same artifact `pip install`/
`uv tool install` uses), not from git source — one release, one set of bits, however you
install it. `Formula/token-finops-cli.rb`'s `url`/`sha256` get bumped by hand on each new
PyPI release; see the main project's `contrib/homebrew/README.md` for the bump procedure.

Source and issues: https://github.com/oh-my-agent-code/token-finops-cli
