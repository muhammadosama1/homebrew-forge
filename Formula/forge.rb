class Forge < Formula
  desc "SwiftUI feature scaffolding CLI for MVVM, MVI, VIPER, VIP and MVP"
  homepage "https://github.com/muhammadosama1/Forge"
  version "2.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/download/v2.0.0/forge-arm64.zip"
    sha256 "26979564a20bb06cd17d0efeafc9455c9f8d86983f3b3792dc2c8243cb3ca4aa"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/download/v2.0.0/forge-x86_64.zip"
    sha256 "15ad20c62c21afa587a94e0221c883e70b888f789e3cdae21df9bbab6a584943"
  end

  def install
    bin.install "forge-arm64" => "forge" if Hardware::CPU.arm?
    bin.install "forge-x86_64" => "forge" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/forge", "--version"
  end
end
