class Howzo < Formula
  desc "Local, zero-model command router: ask in English, get the installed tool"
  homepage "https://github.com/sohailchd/howzo"
  url "https://github.com/sohailchd/howzo/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "c9ddf2b5edc8de94042ea3fef22589933e3a402471fc85f4f275830600c15ff4"
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
