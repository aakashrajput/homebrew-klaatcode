# typed: false
# frozen_string_literal: true

class Klaatcode < Formula
  desc "AI coding agent for the terminal — smart routing, knowledge graph, multi-tier models"
  homepage "https://klaatai.vercel.app"
  version "1.15.39"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.39/klaatcode-darwin-arm64.zip"
      sha256 "PLACEHOLDER_SHA256"
    end
    on_intel do
      url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.39/klaatcode-darwin-x64.zip"
      sha256 "PLACEHOLDER_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.39/klaatcode-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end
    on_intel do
      url "https://github.com/aakashrajput/KlaatAI/releases/download/v1.15.39/klaatcode-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
