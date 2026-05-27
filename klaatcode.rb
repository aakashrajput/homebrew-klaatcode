class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.44"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.44/klaatcode-darwin-arm64.zip"
    sha256 "34d859035667e9f9d9c27182fb6935e541999d61bae5077a55fc4061c7dfa4a1"
  else
    url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.44/klaatcode-darwin-arm64.zip"
    sha256 "34d859035667e9f9d9c27182fb6935e541999d61bae5077a55fc4061c7dfa4a1"
  end

  def install
    bin.install "klaatcode"
  end

  def post_install
    # Sign the binary with a stable identifier so macOS XFENCE remembers the Allow rule
    system "codesign", "--force", "--sign", "-", "--identifier", "com.klaatai.klaatcode", "#{bin}/klaatcode"
    # Remove quarantine attribute to prevent repeated Gatekeeper prompts
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
