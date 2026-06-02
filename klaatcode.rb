class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.64&platform=darwin-arm64"
      sha256 "338ceb60e222ae8fd198062fec95db237cf508ab9117040076d62f1a7b15ef47"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.64&platform=linux-arm64"
      sha256 "751cddc5f036d6adca4607e180235abc0bc92bea5d387be69bee9d39bafdeb05"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.64&platform=linux-x64"
      sha256 "cc1783569f56a4c432e3db7a6c93bb60c0ec0d57214bf8b748cacec77ca442bf"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
