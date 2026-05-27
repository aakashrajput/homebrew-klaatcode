class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.51&platform=darwin-arm64"
      sha256 "4f5d8839cdd97d58acb736e6bbbf79d8626d83b453b03bcdd7d4f0bce8e20a6a"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.51&platform=linux-arm64"
      sha256 "b4b9352b279388cf881514589483caf4936b0757eb53b900a03f8985f7169837"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.51&platform=linux-x64"
      sha256 "272bc24c65b1594b5353ad35a3fed505d52941398fa24a08b476d26c068d4528"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
