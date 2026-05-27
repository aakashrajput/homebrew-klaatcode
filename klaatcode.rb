class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.48&platform=darwin-arm64"
      sha256 "099544f84433abd195820d6e8adbc7a63608c5c7e0b09e5a468c3f497370dbc6"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.48&platform=linux-arm64"
      sha256 "4b9f76baebd435f86f2545a336786a99a36d3222c0e9d2c94dd1082a3b3735f8"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.48&platform=linux-x64"
      sha256 "06c416ff593c0d2dbf57645d3c9146d0629aadb92f7c49c136350c348cda32fd"
    end
  end

  def install
    bin.install "klaatcode"
  end

  def post_install
    if OS.mac?
      system "codesign", "--force", "--sign", "-", "--identifier", "com.klaatai.klaatcode", "#{bin}/klaatcode"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
