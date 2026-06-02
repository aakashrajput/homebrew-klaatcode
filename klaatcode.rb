class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.63&platform=darwin-arm64"
      sha256 "4ad13fbd0d6daa10529899ea7e4deb176af503cb1828ee2122a8e5802216a715"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.63&platform=linux-arm64"
      sha256 "b72e986baf6712273e97db823a825d4dec6c68f11adf6f6c557446b923d29205"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.63&platform=linux-x64"
      sha256 "21a485e3dc80fa679915a9414a1c21718d042f50a59405cbb2bd0e26e2449f23"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
