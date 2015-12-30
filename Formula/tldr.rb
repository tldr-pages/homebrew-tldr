require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.0.tar.gz"
  sha1 "8a2e1d4c4c56876ae99c89c2ce9b66b9638aea50"

  depends_on "curl"
  def install
    system "cd src && make"
    bin.install "src/tldr"
  end

  test do
    system "tldr tar"
  end
end
