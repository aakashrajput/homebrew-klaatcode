class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.45&platform=darwin-arm64"
      sha256 "04613bfdff1dc99b0b61dd4ec11354e90cb2fae879628905dcffb5d31f3c7918"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.45&platform=linux-arm64"
      sha256 "382122d456e542e40fac17a6270eedf00f0855f51cd50641f4722c668af7e06b"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.45&platform=linux-x64"
      sha256 "6bc5e208ce6e839683c54ab03ddf4f767ee6fa1c4dc1048902d91a85ec652e6e"
    end
  end

  def install
    bin.install "klaatcode"
  end

  def post_install
    if OS.mac?
      system "codesign", "--force", "--sign", "-", "--identifier", "com.klaatai.klaatcode", "#{bin}/klaatcode"
      system "xattr", "-dr", "com.apple.quarantine", "#{bin}/klaatcode"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
