class TokenFinopsCli < Formula
  include Language::Python::Virtualenv

  desc "Local-first token usage and budget-runway tracker for AI coding agents"
  homepage "https://github.com/oh-my-agent-code/token-finops-cli"
  url "https://files.pythonhosted.org/packages/96/28/4962912e619bc0b2ea1cebeccc309a918f01840ef51cdbd007dc85ef20ec/token_finops_cli-0.5.0.tar.gz"
  sha256 "2f97827c62fcab3eb86557cc38cdc4b5baf01db5166b02b5322083bb5e43bc5a"
  license "AGPL-3.0-or-later"

  depends_on "python@3.12"

  # token-finops-cli has zero third-party dependencies (dependencies = [] in
  # pyproject.toml, stdlib only) so no `resource` blocks are needed beyond
  # the package itself.
  def install
    virtualenv_install_with_resources
  end

  test do
    # Assertions are pinned to subcommands actually present in the 0.5.0 sdist above.
    # Bump this list only alongside a url/sha256 bump to a release that includes more.
    help_text = shell_output("#{bin}/token-finops --help")
    assert_match "usage: token-finops", help_text
    assert_match "report", help_text
    assert_match "sessions", help_text
    assert_match "adapters", help_text
    assert_match "doctor", help_text
    version_text = shell_output("#{bin}/token-finops --version")
    assert_match "token-finops-cli 0.5.0", version_text
  end
end
