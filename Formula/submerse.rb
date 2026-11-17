# The submerse command line (S-1530). Written by scripts/cli-release.sh from
# cli/release/submerse.rb.template in the Submerse monorepo; edit the template,
# not this file, which the next release replaces.
class Submerse < Formula
  desc "Save, organize and label Submerse bookmarks from the terminal"
  homepage "https://submerse.it/help#command-line"
  url "https://github.com/godspeedsys/submerse-cli/releases/download/v0.3.0/submerse-0.3.0-macos-universal.tar.gz"
  sha256 "bb0dbd1aa75d0838dc82af007c6d9382d40997e7b1beb9a8e17dcccbf651676c"
  version "0.3.0"

  depends_on :macos

  def install
    bin.install "submerse"
    generate_completions_from_executable(bin/"submerse", "completions")
  end

  test do
    assert_equal "submerse #{version}", shell_output("#{bin}/submerse --version").strip
  end
end
