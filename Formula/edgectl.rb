# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.1.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.1.4/edgectl-macos-amd64.tar.gz"
    sha256 "570207b2a56ec88dbdfda0ad57d072e380825cf00a2676e55c7a694ac9bb900e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.1.4/edgectl-linux-amd64.tar.gz"
    sha256 "3673ace66e9516d03425922b549027c3c90e7fd846d32a9aef35a9d2fc56ff2d"
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
