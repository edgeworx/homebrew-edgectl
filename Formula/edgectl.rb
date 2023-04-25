# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Darcy Cloud"
  homepage "https://cloud.darcy.ai"
  version "2.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.4.1/edgectl_2.4.1_macos_arm64.tar.gz"
      sha256 "5328ffac0f8d8631ad008338a3cc6edb94867ab1ff75988c80d59dda851b5678"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.4.1/edgectl_2.4.1_macos_amd64.tar.gz"
      sha256 "0aca808935e06722fda3092fedc7f9c5ec900ea2342e0cb44dee6d8edf8cf15f"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.4.1/edgectl_2.4.1_amd64.tar.gz"
      sha256 "08aed3d929d80bcf2c82d9629cdbefc0220be0392e334a7b850577500fa38734"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.4.1/edgectl_2.4.1_armv6.tar.gz"
      sha256 "dfe99d2b844c6f484474a027d18aac98c6e59cfbbb4ae3c0e04ba0a40cee206d"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.4.1/edgectl_2.4.1_arm64.tar.gz"
      sha256 "94ad30cc57441d58364c974b4d81486bba74ec749b6acb3e68426aa693063ea3"

      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl version"
  end
end
