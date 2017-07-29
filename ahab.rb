class Ahab < Formula
  desc "Tools for taming Docker"
  homepage "https://github.com/clarkema/ahab"
  url "https://github.com/clarkema/ahab/archive/v0.1.0.tar.gz"
  sha256 "c405446291bf89715d4e7337dfe83f81864de9446149dbba902d786bbc2c0741"

  depends_on "rakudo-star"

  def install
    bin.install "bin/docker-tags"
  end

  test do
    system "#{bin}/docker-tags"
  end
end
