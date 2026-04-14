class Martini < Formula
  desc "Professional Zsh Terminal & CLI orchestrator built in Swift"
  homepage "https://github.com/michael00kir/martini"
  
  # Switch from URL/SHA to Tag/Revision style
  url "https://github.com/michael00kir/martini.git",
      tag:      "v1.0.1",
      revision: "REPLACE_WITH_ACTUAL_COMMIT_HASH"
  
  license "MIT"

  depends_on :xcode => ["26.3", :build]

  def install
    system "xcodebuild", "-project", "Martini.xcodeproj", 
           "-scheme", "Martini", 
           "-configuration", "Release", 
           "SYMROOT=build"

    bin.install "build/Release/Martini"
  end

  test do
    assert_match "Martini Started", shell_output("#{bin}/Martini --version", 0)
  end
end
