require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  desc ""

  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.1.0.tar.gz"
  sha256 "eed26fd5471963d63708e5142388d47f4619649070839dbfe1c46c7842975138"

  head "https://github.com/tldr-pages/tldr-cpp-client.git"

  depends_on "curl"
  depends_on "libzip"
  depends_on "pkg-config"
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
