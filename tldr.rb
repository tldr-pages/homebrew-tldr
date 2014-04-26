require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"
  url "https://github.com/tldr-pages/tldr-cpp-client/archive/0.1.tar.gz"
  sha1 "18c133b70c9818f04fa9ba449f48fce6e4ee14b4"

  depends_on "curl"
  def install
    system "make"
    bin.install "tldr"
  end

  test do
    system "tldr tar"
  end
end
