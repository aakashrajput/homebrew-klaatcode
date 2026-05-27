# typed: false
# frozen_string_literal: true

class Klaatcode < Formula
  desc "AI coding agent for the terminal — smart routing, knowledge graph, multi-tier models"
  homepage "https://klaatai.vercel.app"
  version "1.15.43"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.43&platform=darwin-arm64",
          extension: "zip"
      sha256 "08c7950ff5589c384250ab21d8fb0b395364b83747305cde6c4b73c7bc8a4158"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.43&platform=linux-arm64",
          extension: "tar.gz"
      sha256 "8ce69606bac5775f0064acd32fc7e0cc814d3ea7318b65a20e607fcfbc470d9c"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.43&platform=linux-x64",
          extension: "tar.gz"
      sha256 "feca24ec95aa7faf2197446b5c5b0b2c890de250ddfb0a66b8837685dc0c6215"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
