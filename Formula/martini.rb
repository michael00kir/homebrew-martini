class Martini < Formula
  desc "Professional Zsh Terminal & CLI orchestrator built in Swift"
  homepage "https://github.com/michael00kir/martini"
  
  # When using tag/revision, Homebrew often prefers the version 
  # to be defined explicitly or inferred correctly from the tag.
  url "https://github.com/michael00kir/martini.git",
      tag:      "1.0.2",
      revision: "979b9d3eb550e76aff7940d1e51a5370d8b7b4f6" # Example hash
  
  # Explicitly define the version to prevent 'version (nil)' errors
  version "1.0.2" 
  license "MIT"

  depends_on :xcode => ["26.4", :build]

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
