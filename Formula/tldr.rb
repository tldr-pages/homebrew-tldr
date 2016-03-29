require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"

  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.1.0.tar.gz"
  sha256 "eed26fd5471963d63708e5142388d47f4619649070839dbfe1c46c7842975138"

  head "https://github.com/tldr-pages/tldr-cpp-client.git"

  depends_on "curl"
  depends_on "libzip"
  depends_on "pkg-config"
  def install
    system "cd src && make"
    bin.install "src/tldr"
  end

  test do
    system "tldr tar"
  end
end
