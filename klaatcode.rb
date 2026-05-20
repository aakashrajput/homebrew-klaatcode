# typed: false
# frozen_string_literal: true

class Klaatcode < Formula
  desc "AI coding agent for the terminal — smart routing, knowledge graph, multi-tier models"
  homepage "https://klaatai.vercel.app"
  version "1.15.42"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.42&platform=darwin-arm64",
          extension: "zip"
      sha256 "abaf7fdab2472d866b263684bf9ecd6a3cd18f464808e0fa145bc5a59f85121e"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.42&platform=linux-arm64",
          extension: "tar.gz"
      sha256 "6aa1a51e35a664323353e9006620151de2aae178c3e35f79859943ecebbd876e"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.42&platform=linux-x64",
          extension: "tar.gz"
      sha256 "2ffb4efddd0e10093f681a491aa2353fbd98d2797f06f577ce1593b1b7fc612e"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
