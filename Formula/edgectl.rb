# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "2.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/edgeworx/homebrew-edgectl/releases/download/v2.1.1/edgectl_2.1.1_macos_arm64.tar.gz"
      sha256 "4c3e8863ce98ae6f81d2bf0ca36964a7417c353fd1688a1b2b876a2e9a5db190"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/homebrew-edgectl/releases/download/v2.1.1/edgectl_2.1.1_macos_amd64.tar.gz"
      sha256 "8e75020dfda38ef151ab936136705b6fc823f85a42fe8b401ecc771fcf06f067"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/homebrew-edgectl/releases/download/v2.1.1/edgectl_2.1.1_arm64.tar.gz"
      sha256 "39326cebf1d3cb9aa491a21667f4589e1e7c0fcf865f44e23a47969e3752fed8"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/homebrew-edgectl/releases/download/v2.1.1/edgectl_2.1.1_armv6.tar.gz"
      sha256 "07ccec1c8e09f798cd1e6c67f2678407c8d20cf55442ba0519cdafd61115de3c"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/homebrew-edgectl/releases/download/v2.1.1/edgectl_2.1.1_amd64.tar.gz"
      sha256 "78ca5c93f34ebdc7774bcff80fc273e75bdc1fe81e74104968f50f8dc56f5a28"

      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl version"
  end
end
