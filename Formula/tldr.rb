require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  desc ""

  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.2.0.tar.gz"
  sha256 "db2e70b3f4209c67b5b9896e052bf3d9e77570dcb04d0c9932776aa44cca9d3e"

  head "https://github.com/tldr-pages/tldr-cpp-client.git"

  depends_on "curl"
  depends_on "libzip"
  depends_on "pkg-config" => :build
  def install
    system "make", "DEBUG=-march=native -O2"
    bin.install "tldr"
    man.mkpath
    man1.install "man/tldr.1"
  end

  test do
    system "tldr tldr"
  end
end
