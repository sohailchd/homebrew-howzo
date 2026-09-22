class Howzo < Formula
  desc "Local, zero-model command router: ask in English, get the installed tool"
  homepage "https://github.com/sohailchd/howzo"
  url "https://github.com/sohailchd/howzo/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "7a1e41ff5d5e9df89b5e164b2721f82d1409cd2fb1edd054d469a9dca9eb51f0"
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
