class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.65&platform=darwin-arm64"
      sha256 "7f33b0f14a0af7b8f969ab3850b0521ab751ca3f108c1b0de2e8da122c464bdc"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.65&platform=linux-arm64"
      sha256 "f8b35677f6f5520f5c424b51b6e556f63a4c7631c4b80e148dcd1b02901187e0"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.65&platform=linux-x64"
      sha256 "56e647590b036b211eb21419be7a6e9f4fd96ae1d13b31d61ff17f6f872e6acd"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
