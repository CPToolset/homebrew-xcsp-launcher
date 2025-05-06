class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a11/xcsp-0.1.0a11-macos.tar.gz"
  sha256 "af70b6986bf9451f6632e7fd1549e1db18b31d17f4fcb8bafa5389863973803f"
  license "LGPL-3.0-or-later"

  def install
    bin.install "bin/xcsp-macos" => "xcsp"
    share.install "share/xcsp-launcher"
  end

#  def post_install
#    system "#{bin}/xcsp", "--bootstrap"
#  end

  test do
    system "#{bin}/xcsp", "--help"
  end
end
