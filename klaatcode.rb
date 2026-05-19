# typed: false
# frozen_string_literal: true

class Klaatcode < Formula
  desc "AI coding agent for the terminal — smart routing, knowledge graph, multi-tier models"
  homepage "https://klaatai.vercel.app"
  version "1.15.40"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.40&platform=darwin-arm64",
          extension: "zip"
      sha256 "d0e72aed401586c3cf6ef1b4e4f375e1b08cabe151666a6bbc565bc603a3f8da"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.40&platform=linux-arm64",
          extension: "tar.gz"
      sha256 "fc41be734be9e9767fb4a2fb1a6b21732035974b3c47b808cef84aaeec5fca77"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.40&platform=linux-x64",
          extension: "tar.gz"
      sha256 "29b9cfa6cdc45d89df798625dc62485aee5b90df3f6ff235777554feb823194d"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
