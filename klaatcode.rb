# typed: false
# frozen_string_literal: true

class Klaatcode < Formula
  desc "AI coding agent for the terminal — smart routing, knowledge graph, multi-tier models"
  homepage "https://klaatai.vercel.app"
  version "1.15.41"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.41&platform=darwin-arm64",
          extension: "zip"
      sha256 "7bdbc89f6120e3f0934e9fab658315654dde217317858ea19d68658628142feb"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.41&platform=linux-arm64",
          extension: "tar.gz"
      sha256 "57b52010535f13e6f24fc50a7cb560f26ac2772581a65de79bba165c9716b30b"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.41&platform=linux-x64",
          extension: "tar.gz"
      sha256 "67fa2d182ede7dbd1959ca281a51f885f6975a1ed578611e2cea35d2010c58b7"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
