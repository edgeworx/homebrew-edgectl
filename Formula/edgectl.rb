# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.3.25"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.25/edgectl_0.3.25_macos_amd64.tar.gz"
      sha256 "6d4c176bb6d90a16d1a5243fb3ac8497467cd75790dfc481083944f3f65f1885"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.25/edgectl_0.3.25_macos_arm64.tar.gz"
      sha256 "dfee85b9c4ef272f95e11b7548c42bdbca376f6a3e017db5a67379c1d0d8dc11"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.25/edgectl_0.3.25_amd64.tar.gz"
      sha256 "246101371e8fc02dc53d4ff2bcc854f503b2385f4432ba4faea618000cb7cfcd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.25/edgectl_0.3.25_arm64.tar.gz"
      sha256 "4ff48490074ba898aa932ee47cc84c99b056d47aa604fc740e11834e34a5355f"
    end
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
