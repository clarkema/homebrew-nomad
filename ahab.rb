class Ahab < Formula
  desc "Tools for taming Docker"
  homepage "https://github.com/clarkema/ahab"
  url "https://github.com/clarkema/ahab/archive/v0.1.1.tar.gz"
  sha256 "f9ebd806042308b2e81e7f33d25d7d645fcade2dac8aa1f5d413074df3ed35f3"

  depends_on "rakudo-star"

  def install
    bin.install "bin/docker-tags"
  end

  test do
    system "#{bin}/docker-tags"
  end
end
