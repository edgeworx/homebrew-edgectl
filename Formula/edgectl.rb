# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Darcy Cloud"
  homepage "https://cloud.darcy.ai"
  version "2.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.1/edgectl_2.3.1_macos_arm64.tar.gz"
      sha256 "dbd85a586d06baa7c3d8252063946c187392e82f850aa5649e5dbb80eaf998e1"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.1/edgectl_2.3.1_macos_amd64.tar.gz"
      sha256 "9be9025d68ed9bb8227061254453ac996cf82f47c6fec3968e8f38200da4146d"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.1/edgectl_2.3.1_amd64.tar.gz"
      sha256 "63acf70e5e9cab31cc938d2d8b596d11d744d430c241dc71930740ffb5fdaa67"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.1/edgectl_2.3.1_arm64.tar.gz"
      sha256 "e677af939baa3d8d27747a1bc894ed99f49e35c34486da2530c63c80b5b65eb1"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.1/edgectl_2.3.1_armv6.tar.gz"
      sha256 "7a4e2c19718e9b02b7f72afd613f3d979def79894649ff6eee5138c02a5bc7d4"

      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl version"
  end
end
