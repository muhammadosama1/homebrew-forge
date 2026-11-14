class Forge < Formula
  desc "SwiftUI feature scaffolding CLI for MVVM, MVI, VIPER, VIP and MVP"
  homepage "https://github.com/muhammadosama1/Forge"
  version "2.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/download/v2.1.0/forge-arm64.zip"
    sha256 "72f28ac5731dfa29233edca217394ebb318c7556d6675e0eaa2376b692c5a4d5"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/download/v2.1.0/forge-x86_64.zip"
    sha256 "69449c2ed5b6502218dbd867761282fb8e6f51d02e9e0d04bc455eebaaef6e8a"
  end

  def install
    bin.install "forge"
  end

  test do
    system "#{bin}/forge", "--version"
  end
end
