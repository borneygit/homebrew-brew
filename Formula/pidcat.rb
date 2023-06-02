class Pidcat < Formula
  desc "A logcat colored command which displays only source entries for processes of a specific application package."
  homepage "https://github.com/borneygit/pidcat"
  url "https://github.com/borneygit/pidcat/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "90e17d0904565d27d7e149ce3c38f51513552ba8028f6dc46f033295014f5a2e"
  version "0.2.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    # Your test code goes here
    system "#{bin}/pidcat", "--version"
  end
end
