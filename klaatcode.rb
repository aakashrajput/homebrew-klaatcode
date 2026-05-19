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
      url "https://klaatai.vercel.app/api/download?version=1.15.39&platform=darwin-arm64",
          using: :nounzip
      sha256 "7ea7e8f76f41fea314952f15d810d685a6dfe67df11ec0fc30ca832b6ebac5ff"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.39&platform=linux-arm64"
      sha256 "c450eb8e0d7d246e2de6b2309097643fc5047ef257261dba53a5e12cd5894ecc"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.39&platform=linux-x64"
      sha256 "ef143f578779a01f36c7c2f3291ebe441d449cbb4a86b06c6ef5b04685fee4dd"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
