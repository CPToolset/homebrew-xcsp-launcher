class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.4.0/xcsp-0.4.0-macos.tar.gz"
  sha256 "19fec4595d09617245bdcc4eae7a97e5a3c5490d03fcb46663b7d478309fbd8a"
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
