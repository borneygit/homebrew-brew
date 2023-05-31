class Pidcat < Formula
  desc "A logcat colored command which displays only source entries for processes of a specific application package."
  homepage "https://github.com/borneygit/pidcat"
  url "https://github.com/borneygit/pidcat/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2545eb4444ff4fa8de367fe0352fe699fd7c8173e5f9c91d5505c1716c2a14a5"
  version "0.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    # Your test code goes here
    system "#{bin}/pidcat", "--version"
  end
end
