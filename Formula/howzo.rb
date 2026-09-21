class Howzo < Formula
  desc "Local, zero-model command router: ask in English, get the installed tool"
  homepage "https://github.com/sohailchd/howzo"
  url "https://github.com/sohailchd/howzo/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "3977c48ca42ae9f5979d96a1459499b3251b225b2f243f34023df43dd41a786e"
  license "MIT"

  depends_on "python@3.14"

  def install
    venv = libexec/"venv"
    system Formula["python@3.14"].bin/"python3", "-m", "venv", venv
    system venv/"bin/pip", "install", "."
    bin.install_symlink venv/"bin/howzo"
  end

  test do
    system bin/"howzo", "db"
  end
end
