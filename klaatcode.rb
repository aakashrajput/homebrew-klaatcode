class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.44&platform=darwin-arm64",
          using: :nounzip
      sha256 "34d859035667e9f9d9c27182fb6935e541999d61bae5077a55fc4061c7dfa4a1"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.44&platform=linux-arm64"
      sha256 "f2278f1a61f8ef99849a392ada73a7643d9f894a8f3115f0f95a5b372692f600"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.44&platform=linux-x64"
      sha256 "949b8f2e904481f5b9fdf9d8c210a1f8c7c59f09fac45a0062af791c76c6fe56"
    end
  end

  def install
    bin.install "klaatcode"
  end

  def post_install
    if OS.mac?
      # Sign with stable identifier so macOS XFENCE remembers the Allow rule
      system "codesign", "--force", "--sign", "-", "--identifier", "com.klaatai.klaatcode", "#{bin}/klaatcode"
      # Remove quarantine attribute to prevent repeated Gatekeeper prompts
      system "xattr", "-dr", "com.apple.quarantine", "#{bin}/klaatcode"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
