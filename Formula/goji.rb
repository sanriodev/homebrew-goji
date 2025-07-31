class Goji < Formula
  desc "Lightweight version of Oji text emoticon generator. Rewritten in go"
  homepage "https://github.com/sanriodev/goji"
  url "https://github.com/sanriodev/goji/archive/refs/tags/v1.4.3.tar.gz"
  version "1.4.3"
  sha256 "001f77b5fe67cc9c1243977f020b7f6162be0d5cae46b18564048f1f5bafe331"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
  test do
    output = shell_output("#{bin}/goji -h")
    assert_match(/Create custom or random text emojis/, output)
    assert_match(/--new/, output)
    assert_match(/--random/, output)
  end
end
