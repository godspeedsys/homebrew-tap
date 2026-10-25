# The submerse command line (S-1530). Written by scripts/cli-release.sh from
# cli/release/submerse.rb.template in the Submerse monorepo; edit the template,
# not this file, which the next release replaces.
class Submerse < Formula
  desc "Save, organize and label Submerse bookmarks from the terminal"
  homepage "https://submerse.it/help#command-line"
  url "https://github.com/godspeedsys/submerse-cli/releases/download/v0.2.0/submerse-0.2.0-macos-universal.tar.gz"
  sha256 "18bac5deeb262e5287fa8fa8427ce25d53b45b8077d3258f1b1a08efb5f06837"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "submerse"
    generate_completions_from_executable(bin/"submerse", "completions")
  end

  test do
    assert_equal "submerse #{version}", shell_output("#{bin}/submerse --version").strip
  end
end
