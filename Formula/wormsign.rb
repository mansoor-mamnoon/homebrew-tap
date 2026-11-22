class Wormsign < Formula
  desc "Check if a supply-chain worm got your dev machine"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.1/wormsign_darwin_arm64.tar.gz"
      sha256 "510509519db6194daa19c62f6e0fad5ab218fd033e064062c5abf36c1d5045b5"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.1/wormsign_darwin_amd64.tar.gz"
      sha256 "a00ef901ab5f2baf1dfda688eef56e23c9e71ef4d7440e39f8a83a5b5ec65294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.1/wormsign_linux_arm64.tar.gz"
      sha256 "69a2492d8c9db13ad92e8d24ff8152aad46b94ceab0793128a5a63a0c66f4023"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.1/wormsign_linux_amd64.tar.gz"
      sha256 "bbb17863d15747e82f430a907fb5ad3b3d51f0d3d897294d00e05caddcc3b020"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
