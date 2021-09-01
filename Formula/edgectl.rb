# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.4.6"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.4.6/edgectl_0.4.6_macos_amd64.tar.gz"
      sha256 "0b002f1800b0f21b4aa91e13d591e36eb656dd2f45b4a929073cf6cfe6177a49"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.4.6/edgectl_0.4.6_macos_arm64.tar.gz"
      sha256 "4558d85c1732f98eb6b5d7766c3a489f5011f51fbba535557ea53bdee961dace"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.4.6/edgectl_0.4.6_amd64.tar.gz"
      sha256 "e3df5e05869abe6e0cc66489c947b9f246cb8367eca8b1db67f188ac06bd8ac4"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.4.6/edgectl_0.4.6_arm.tar.gz"
      sha256 "f28efa6808cf4c73aed7c6fcf62ef216bc8cd839e68e3bdffd442cdc7d08ff25"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.4.6/edgectl_0.4.6_arm64.tar.gz"
      sha256 "9dc85da068ec2c13a8ebd75b126cbd652813aa5404dbc197ddfee8203c9f046b"
    end
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
