class X12pp < Formula
  desc "X12 pretty printer"
  homepage "https://github.com/clarkema/x12pp"
  url "https://github.com/clarkema/x12pp/archive/v0.3.0.tar.gz"
  sha256 "96eae45a2e516833b2d16007dd97391100430848bffea92c39fff66b1cb7ce18"
  head "https://github.com/clarkema/x12pp.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix,
                               "--path", "."
    man1.install "man/x12pp.1"
  end

  test do
    system "#{bin}/x12pp", "--help"
  end
end
