class Martini < Formula
  desc "Professional Zsh Terminal & CLI orchestrator built in Swift"
  homepage "https://github.com/michael00kir/martini"
  
  # When using tag/revision, Homebrew often prefers the version 
  # to be defined explicitly or inferred correctly from the tag.
  url "https://github.com/michael00kir/martini.git",
      tag:      "1.0.1",
      revision: "bf7a784d4421052e6dd979e7fbecb785631ac04f" # Example hash
  
  # Explicitly define the version to prevent 'version (nil)' errors
  version "1.0.1" 
  license "MIT"

  depends_on :xcode => ["26.3", :build]

  def install
    # Based on your project.pbxproj, the target is Martini
    system "xcodebuild", "-project", "Martini.xcodeproj", 
           "-scheme", "Martini", 
           "-configuration", "Release", 
           "SYMROOT=build"

    bin.install "build/Release/Martini"
  end

  test do
    # Matches the boot string in main.swift
    assert_match "Martini Started", shell_output("#{bin}/Martini --version", 0)
  end
end
