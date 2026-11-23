class Wormsign < Formula
  desc "Check for supply-chain malware and persistence indicators"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.2.0/wormsign_darwin_arm64.tar.gz"
      sha256 "f44a2f9d8879ea93daf2675c0496ad56d91a79fef341461c721c119bc2441f8d"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.2.0/wormsign_darwin_amd64.tar.gz"
      sha256 "be2a41ec038731edb0806c6e509a4ee2101f442f583aa01416077e4f8f1b74c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.2.0/wormsign_linux_arm64.tar.gz"
      sha256 "6c4ad6a718c995430db9941ef6f5c32767c850ee19febe7a6232650b53852384"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.2.0/wormsign_linux_amd64.tar.gz"
      sha256 "0ccdf3d85f24cf1ace2c5665d4566e0c502dcdee3b8616fb046a42696c2c766b"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
