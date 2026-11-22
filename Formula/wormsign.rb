class Wormsign < Formula
  desc "Check for supply-chain malware and persistence indicators"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.3/wormsign_darwin_arm64.tar.gz"
      sha256 "d2bfe2a30f32abdab9c692c5fb17a011137628cc5b8a14ce13bd5efaaeb20f19"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.3/wormsign_darwin_amd64.tar.gz"
      sha256 "dabb6bdc927c52f8c23313b4e980dfc7c34320069f5ad1e3b209fcb5f31ddeb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.3/wormsign_linux_arm64.tar.gz"
      sha256 "b65954341facd349dcf98d5bd7b2a11ed86370cbf2356b7953e92d0e4d49cc9f"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.3/wormsign_linux_amd64.tar.gz"
      sha256 "33b30fd7b7c2a955b4ac3358dc5490c69a5f877f1d5c9bbe435a88b88b9803b2"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
