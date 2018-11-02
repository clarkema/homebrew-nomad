class CsvClean < Formula
  desc "Fast CSV cleaning and normalisation"
  homepage "https://github.com/clarkema/csv-clean"
  head "https://github.com/clarkema/csv-clean.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix,
                               "--path", "."
  end

  test do
    system "#{bin}/csv-clean", "--help"
  end
end
