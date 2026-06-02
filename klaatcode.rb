class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.60&platform=darwin-arm64"
      sha256 "61225fa623e15ffeb5cf8a9e422a88a8c136e124a0829e200f58a17c7b50d5ce"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.60&platform=linux-arm64"
      sha256 "3c5ded72bbbcc849413ce28d17384890bfe630431fce526040b568cc3866d3f4"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.60&platform=linux-x64"
      sha256 "5b189b433a82c075f63838476755f6600c338bc340cb277cfc797442436cf00b"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
