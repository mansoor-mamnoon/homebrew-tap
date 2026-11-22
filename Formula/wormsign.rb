class Wormsign < Formula
  desc "Check for supply-chain malware and persistence indicators"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.5/wormsign_darwin_arm64.tar.gz"
      sha256 "2c363f7b229ffc7eef1d3b42a19f2b89cd072069e13dd14c6f8752dfa10bc9ed"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.5/wormsign_darwin_amd64.tar.gz"
      sha256 "a784eee8aafe72e0dc72caefb2e0a55d38ff1c001eefce237a5b5cec1a779481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.5/wormsign_linux_arm64.tar.gz"
      sha256 "265e121faa99f0efa169731eb159a5bfef3e604c3a8a1cd5caf57da7f1d052fd"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.5/wormsign_linux_amd64.tar.gz"
      sha256 "3982be5e5a1b8f84ef6d6a02c1c46678904ca0cfa24d889c50c0f60135ded9eb"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
