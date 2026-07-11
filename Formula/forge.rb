class Forge < Formula
  desc "Swift feature scaffolding CLI for MVVM, VIPER, VIP, MVP and TCA"
  homepage "https://github.com/muhammadosama1/Forge"
  version "1.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/tag/v1.0.0/forge-arm64.zip"
    sha256 "82ea1ac3266e088c78cd3c95e6988acac277d7b751e93a312b6c180f7816e46e"
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

