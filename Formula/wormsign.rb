class Wormsign < Formula
  desc "Check if a supply-chain worm got your dev machine"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.2/wormsign_darwin_arm64.tar.gz"
      sha256 "fc2bc1aa5a73ce4e45c40bafdcb1d2e7be4b4b8c87aa436936c934e4ff19f24b"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.2/wormsign_darwin_amd64.tar.gz"
      sha256 "c626eb19e0b669ade1da84e9a7f6e80f7aa0e5c727351b61e22ffb6b078eb531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.2/wormsign_linux_arm64.tar.gz"
      sha256 "aafb436a8f7897902dee633842ef8e1e9a8452f2827752ee73cbb4ae07d65e3d"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.2/wormsign_linux_amd64.tar.gz"
      sha256 "f14edb31824ac16cd4255272a52e842074cd8965ea5da59e3e08d5a1313382fb"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
