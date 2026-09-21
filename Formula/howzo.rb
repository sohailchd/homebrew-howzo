class Howzo < Formula
  desc "Local, zero-model command router: ask in English, get the installed tool"
  homepage "https://github.com/sohailchd/howzo"
  url "https://github.com/sohailchd/howzo/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "c9b5e727c4461d336d27f69be6c0c8d746583894ebb6f1b0564f31576b549b93"
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
