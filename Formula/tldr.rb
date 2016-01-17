require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.1.0.tar.gz"
  sha1 "7323a59434d5c3f910e183e77b62c941b2834869"

  depends_on "curl"
  depends_on "libzip"
  def install
    system "cd src && make"
    bin.install "src/tldr"
  end

  test do
    system "tldr tar"
  end
end
