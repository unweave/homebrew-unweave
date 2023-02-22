# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Unweave < Formula
  desc "Supabase for Machine Learning"
  homepage "https://unweave.io"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/unweave/cli/releases/download/v0.1.0/unweave_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "848424c9aaedba46260600fc7a3a84f3fd3798bc2c17648d62f7226d39a3b3b6"

      def install
        bin.install "unweave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/unweave/cli/releases/download/v0.1.0/unweave_0.1.0_Darwin_arm64.tar.gz"
      sha256 "2db8338bbe2edb107892e75aef2e3cc857ebd87f8a3a4abf6eabe1f77de8b741"

      def install
        bin.install "unweave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/unweave/cli/releases/download/v0.1.0/unweave_0.1.0_Linux_x86_64.tar.gz"
      sha256 "79e9c589a755e82e0dfcc91a9b56dc87d0a3e0b3902be6f634cfe65330ff0f1b"

      def install
        bin.install "unweave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unweave/cli/releases/download/v0.1.0/unweave_0.1.0_Linux_arm64.tar.gz"
      sha256 "8125a43cc063c259ebe88f597bb664bb2725caa4f85b810b6a2a0bca90559fcc"

      def install
        bin.install "unweave"
      end
    end
  end

  test do
    system "#{bin}/unweave"
  end
end
