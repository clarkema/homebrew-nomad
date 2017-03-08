require "formula"

class GitMap < Formula
  homepage "https://github.com/clarkema/git-map"
  url "https://github.com/clarkema/git-map/archive/v0.0.3.tar.gz"
  sha256 "47442a71e9146bf2597010318457cac6aee0db94063a117d3a88afeb829a55bb"

  def install
    system "pod2man ./bin/git-map > git-map.1"
    bin.install "bin/git-map"
    man1.install "git-map.1"
  end

  test do
    system "git-map"
  end
end
