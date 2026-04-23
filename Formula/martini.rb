class Martini < Formula
  desc "Agent with a Twist"
  homepage "https://martini.systems"
  # Updated to the direct download URL
  url "https://github.com/michael00kir/homebrew-martini/releases/download/1.1.0/martini.zip"
  sha256 "sha256:589f9bbf43c94dfc79df7bd68dc97ed7e2d984f815ddb95276965898b1cea03c"
  version "1.1.0"

  def install
    bin.install "Martini"
  end

  test do
    system "#{bin}/Martini", "--version"
  end
end
