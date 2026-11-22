class Wormsign < Formula
  desc "Check if a supply-chain worm got your dev machine"
  homepage "https://github.com/mansoor-mamnoon/wormsign"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.0/wormsign_darwin_arm64.tar.gz"
      sha256 "6feb07b8a476b68f787f1dd1a797de39e46635a36133847b1a3345e3af70f1c6"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.0/wormsign_darwin_amd64.tar.gz"
      sha256 "7484ad2e045276abe1e65ef51817b832f283620574a787e9d39877b4846b8e68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.0/wormsign_linux_arm64.tar.gz"
      sha256 "2954679fd150275bd3906422cf450f785c46215d636c0b52e427100480199c7f"
    end
    on_intel do
      url "https://github.com/mansoor-mamnoon/wormsign/releases/download/v0.1.0/wormsign_linux_amd64.tar.gz"
      sha256 "652d71b36181551aea69887a0ada833b6983c4e3754d28cd501bd40672480564"
    end
  end

  def install
    bin.install "wormsign"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wormsign --version")
  end
end
