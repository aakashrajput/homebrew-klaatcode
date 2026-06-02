class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.62&platform=darwin-arm64"
      sha256 "c7d318e6dba839689efcb6f99ce57fb70d3b67a380f2c81e695f9bab3e10d4f6"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.62&platform=linux-arm64"
      sha256 "873053229a64ee9c9205fdc102e6711225d55cbbb2e93bad70a68c1d4c38bf02"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.62&platform=linux-x64"
      sha256 "81c6b7d27d21b8a360a04b1a08aa5aa49623a7b4303e35126277f31516516eb5"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
