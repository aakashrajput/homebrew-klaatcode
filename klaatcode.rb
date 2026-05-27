class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.47&platform=darwin-arm64"
      sha256 "cac8f671942698472f9a970f6a00242364f5624ab2548a2381fb51e08c66649c"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.47&platform=linux-arm64"
      sha256 "7de7a240ff2b181ae49ade97cee5d39190757eeb1fa189042de0975b249de1c9"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.47&platform=linux-x64"
      sha256 "ae749cf859a11f4e9119631359976c0527fd5c8a620341eefe28c63b017d2317"
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
