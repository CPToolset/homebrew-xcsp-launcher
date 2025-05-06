class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a2/xcsp-0.1.0a2-macos.tar.gz"
  sha256 "8c698b518759a7cd39278668b41effa84eab59c0280d03307df2ec690059346e"
  license "LGPL-3.0-or-later"

  def install
    bin.install "xcsp-macos" => "xcsp"
    share.install "configs" => "xcsp-launcher/configs"
    share.install "xcsp/tools/xcsp3-solutionChecker-2.5.jar" => "xcsp-launcher/tools/xcsp3-solutionChecker-2.5.jar"
  end

#  def post_install
#    system "#{bin}/xcsp", "--bootstrap"
#  end

  test do
    system "#{bin}/xcsp", "--help"
  end
end
