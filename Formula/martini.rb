class Martini < Formula
  desc "Agent with a Twist"
  homepage "https://martini.systems"
  # Updated to the direct download URL
  url "https://github.com/michael00kir/homebrew-martini/releases/download/1.0.0/martini.zip"
  sha256 "tb59686df10c02062b6677957237b6bd8a340aca5"
  version "1.0.0"

  def install
    bin.install "Martini"
  end

  test do
    system "#{bin}/Martini", "--version"
  end
end
