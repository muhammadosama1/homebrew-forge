class Forge < Formula
  desc "Swift feature scaffolding CLI for MVVM, VIPER, VIP, MVP and TCA"
  homepage "https://github.com/muhammadosama1/Forge"
  version "1.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.0/forge-arm64.zip"
    sha256 "aa171af1e7993dcaa592f8835b186227fe1007740f662b142f57b9384d74849a"
  end

  on_intel do
    url "https://github.com/muhammadosama1/Forge/releases/download/v1.1.0/forge-x86_64.zip"
    sha256 "40ae3c55739a2adde57c7f9169c5fe66e2df636fb0abf0a2fdc1faa99fcbefb0"
  end

  def install
    bin.install "forge-arm64" => "forge" if Hardware::CPU.arm?
    bin.install "forge-x86_64" => "forge" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/forge", "--version"
  end
end

