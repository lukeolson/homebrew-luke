require 'formula'

class Pyamg < Formula
  homepage ''
  url 'https://github.com/pyamg/pyamg/releases/download/v2.1.0/official_pyamg_source-2.1.0.tar.gz'
  sha1 '3958eb5551a83952636bc25ea56afebf3a35e460'

  depends_on 'numpy' => :python

  def install
    system "python", "-s", "setup.py", "install"
  end
end
