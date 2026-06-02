class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.61&platform=darwin-arm64"
      sha256 "09bd046b2415ece6f6e4cff678498b94f8c7cdecf6ef59852591aa5839be27d5"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.61&platform=linux-arm64"
      sha256 "285183cac21d03bfe898dc0bd8eacecd05ab8eff4b1c00030ff6eb16c91d3872"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.61&platform=linux-x64"
      sha256 "c8552c0ad574d1ee6932387cfacc20ae6eb6d5d6974f150afd1a4e0f92fda9d5"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
