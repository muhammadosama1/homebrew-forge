class Forge < Formula
  desc "Swift feature scaffolding CLI for MVVM, VIPER, VIP, MVP and TCA"
  homepage "https://github.com/muhammadosama1/Forge"
  version "1.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.0/forge-arm64.zip"
    sha256 "143b240071880aedb5d3624ca3dbbfbd5b9ab53bb610d623ead4d27bb41ce2b8"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.0/forge-x86_64.zip"
    sha256 "0ad45b3113dc70391782d8b9a0391ad670c532cb37f62a50e512643a958e7d08"
  end

  def install
    bin.install "forge-arm64" => "forge" if Hardware::CPU.arm?
    bin.install "forge-x86_64" => "forge" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/forge", "--version"
  end
end

