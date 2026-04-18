class Martini < Formula
  desc "Agent with a Twist"
  homepage "https://martini.systems"
  # Updated to the direct download URL
  url "https://github.com/michael00kir/homebrew-martini/releases/download/1.0.0/martini.zip"
  sha256 "eff540d042b4b359376ca6776cf3b6744f4e9338ca5bb506187b452e6dab8cba"
  version "1.0.0"

  def install
    bin.install "Martini"
  end

  test do
    system "#{bin}/Martini", "--version"
  end
end
