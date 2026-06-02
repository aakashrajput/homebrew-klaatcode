class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.66&platform=darwin-arm64"
      sha256 "7b54ef4138e9eb3dbbbd4aad79006aaa5060e9a7cf7df85d4446a0cc557f30e8"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.66&platform=linux-arm64"
      sha256 "6f59076f8da5d05cf6919206f5314b72867a19ac58a95df898ce49fb82a6d9e6"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.66&platform=linux-x64"
      sha256 "3e6527bd1b5e5306582280af2f9901e4a69555bca43dd501b4ce44ca72d0317a"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
