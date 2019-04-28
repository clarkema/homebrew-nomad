class X12pp < Formula
  desc "X12 pretty printer"
  homepage "https://github.com/clarkema/x12pp"
  url "https://github.com/clarkema/x12pp/archive/v0.2.0.tar.gz"
  sha256 "d1c2c0be9787822c2b26047e8da2d4001775acaf021bbe1189b2ef427933a695"
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
