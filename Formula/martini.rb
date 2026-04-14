class Martini < Formula
  desc "Professional Zsh Terminal & CLI orchestrator built in Swift"
  homepage "https://github.com/michael00kir/martini"
  # Use the #{version} variable so the automation can swap it easily
  url "https://github.com/michael00kir/martini/archive/v#{version}.tar.gz"
  version "1.0.1" # The automation will update this line automatically
  sha256 "00112233445566778899aabbccddeeff00112233445566778899aabbccddeeff"
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
    # Verify that the binary exists and can run
    # We look for the "Martini Started" string printed in main.swift
    assert_match "Martini Started", shell_output("#{bin}/Martini --version", 0)
  end
end
