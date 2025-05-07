class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a14/xcsp-0.1.0a14-macos.tar.gz"
  sha256 "b6814cedb95660cbdc5a9cb41e78d6b9cfc78eca3d102b774e66eabbc5faedca"
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
