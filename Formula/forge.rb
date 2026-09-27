class Forge < Formula
  desc "Swift feature scaffolding CLI for MVVM, VIPER, VIP, MVP and TCA"
  homepage "https://github.com/muhammadosama1/Forge"
  version "1.1.1"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.1/forge-arm64.zip"
    sha256 "efb9bd3387b7eaed519ce6e9d5ea84bf912ffca444959d8c0b6fb94264af3e7c"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.1/forge-x86_64.zip"
    sha256 "3b6e82a089bb81e2f0b0e53307f69a34c1559a1878ed5176e03d8e9543728f70"
  end

  def install
    bin.install "forge-arm64" => "forge" if Hardware::CPU.arm?
    bin.install "forge-x86_64" => "forge" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/forge", "--version"
  end
end
