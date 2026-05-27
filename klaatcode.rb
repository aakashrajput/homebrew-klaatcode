class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.49&platform=darwin-arm64"
      sha256 "0e46cd2a1d5bf082755dc5466dd89eedb23a79d6c2317e05b3f0ca9ac2a061fe"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.49&platform=linux-arm64"
      sha256 "b45fab798fa316ec398072c6f18f19eec5402c26f89bdd87358ffafaf928982c"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.49&platform=linux-x64"
      sha256 "1e4bc9090d80a30fbb58787673aece59bad17d66854a02af0131131ac2c8316a"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
