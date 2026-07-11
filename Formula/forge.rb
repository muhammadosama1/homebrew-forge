class Forge < Formula
  desc "Swift feature scaffolding CLI for MVVM, VIPER, VIP, MVP and TCA"
  homepage "https://github.com/muhammadosama1/Forge"
  version "1.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/tag/v1.0.0/forge-arm64.zip"
    sha256 "e75f9cbfe498924bf389002972f9ce44dec0bd22a8e4c2592a05a295fec224ef"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/tag/v1.0.0/forge-x86_64.zip"
    sha256 "0be4059afa0c30b56d16ecf03749d88f0dba291acbfd4519a9971b59a031d64e"
  end

  def install
    bin.install "forge-arm64" => "forge" if Hardware::CPU.arm?
    bin.install "forge-x86_64" => "forge" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/forge", "--version"
  end
end

