require "formula"

class Tldr < Formula
  homepage "https://github.com/tldr-pages/tldr"

  url "https://github.com/tldr-pages/tldr-cpp-client/archive/v1.1.0.tar.gz"
  sha1 "5223b86952e1d6c34f3cd4bf827f8723c8751af7"

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
