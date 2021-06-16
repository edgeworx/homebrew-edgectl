# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.3.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.1/edgectl-macos-amd64.tar.gz"
    sha256 "0e4cdded0fa843afdd112dc742afdfa77f2c84560a93a7eafbaf241b43138d3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.1/edgectl-linux-amd64.tar.gz"
    sha256 "dab595856648d685ea310df51fd73fd801d8f0ff064962a3f3cba513b828bd3f"
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
