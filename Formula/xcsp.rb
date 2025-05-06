class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a9/xcsp-0.1.0a9-macos.tar.gz"
  sha256 "6538ba3e7235570dd8c00a305b6d22ae683e15568c26aae920ce1758da70af0c"
  license "LGPL-3.0-or-later"

  def install
    bin.install "bin/xcsp-macos" => "xcsp"
    share.install "share/xcsp-launcher/configs" => "xcsp-launcher/configs"
    share.install "share/xcsp-launcher/tools/xcsp3-solutionChecker-2.5.jar" => "xcsp-launcher/tools/xcsp3-solutionChecker-2.5.jar"
  end

#  def post_install
#    system "#{bin}/xcsp", "--bootstrap"
#  end

  test do
    system "#{bin}/xcsp", "--help"
  end
end
