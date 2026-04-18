class Martini < Formula
  desc "Agent with a Twist"
  homepage "https://martini.systems"
  url "https://github.com/michael00kir/homebrew-martini/releases/download/v1.0.0/martini.zip"
  sha256 "tb59686df10c02062b6677957237b6bd8a340aca5"

  def install
    # Since it's notarized, Homebrew just moves it to the bin folder.
    # macOS will recognize the notarization ticket upon first run.
    bin.install "Martini"
  end
end
