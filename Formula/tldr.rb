require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  url "https://github.com/tldr-pages/tldr-cpp-client/archive/0.2.tar.gz"
  sha1 "43c16961a87dc6e42a6227196c757e9980a4445e"

  depends_on "curl"
  def install
    system "make"
    bin.install "tldr"
  end

  test do
    system "tldr tar"
  end
end
