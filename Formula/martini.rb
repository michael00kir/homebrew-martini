class Martini < Formula
  desc "Professional Zsh Terminal & CLI orchestrator built in Swift"
  homepage "https://github.com/michael00kir/martini"
  url "https://github.com/michael00kir/martini/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_YOUR_ACTUAL_SHA256_HASH"
  license "MIT"

  depends_on :xcode => ["26.3", :build]

  def install
    # Build the project using xcodebuild
    # The target name 'Martini' is identified in your pbxproj
    system "xcodebuild", "-project", "Martini.xcodeproj", 
           "-scheme", "Martini", 
           "-configuration", "Release", 
           "SYMROOT=build"

    # Install the binary to the Homebrew bin directory
    # The product type is 'com.apple.product-type.tool'
    bin.install "build/Release/Martini"
  end

  test do
    # Simple test to ensure the binary runs
    assert_match "Martini Started", shell_output("#{bin}/Martini --help", 0)
  end
end
