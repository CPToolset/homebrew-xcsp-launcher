class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.6.0/xcsp-0.6.0-macos.tar.gz"
  sha256 "ced7c1e93d81b767bf9270f4848faf90d5af2555123e61e14aefb061f4d3ae22"
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
