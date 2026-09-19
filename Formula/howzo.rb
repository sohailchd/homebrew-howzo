class Howzo < Formula
  desc "Local, zero-model command router: ask in English, get the installed tool"
  homepage "https://github.com/sohailchd/howzo"
  url "https://github.com/sohailchd/howzo/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.14"

  def install
    system Formula["python@3.14"].bin/"python3", "-m", "pip", "install", "."
  end

  def test
    system bin/"howzo", "db"
  end
end
