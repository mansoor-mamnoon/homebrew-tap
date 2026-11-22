class Wormsign < Formula
  desc "Check for supply-chain malware and persistence indicators"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.4/wormsign_darwin_arm64.tar.gz"
      sha256 "0f0ba7640bffa0470e8d46450da359b13d829aac7b8b7b45dfb64d60aa302ec4"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.4/wormsign_darwin_amd64.tar.gz"
      sha256 "88f239437a2921f92cc0a4113980788c7968d53091c4a828a13099a9510a1d50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.4/wormsign_linux_arm64.tar.gz"
      sha256 "28f236c03505f06eb282ff847718c37972cd9011738a18724029accbc969dd46"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.4/wormsign_linux_amd64.tar.gz"
      sha256 "b2f2aaa3bb2fff2cac91007575943115040942c36c9f13fb46ea9e01be525647"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
