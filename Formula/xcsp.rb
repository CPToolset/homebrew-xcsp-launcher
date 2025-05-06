class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a6/xcsp-0.1.0a6-macos.tar.gz"
  sha256 "e9ed8e9245757bd764dde4bfee1ae798f5a784c92cba353a98db5bb5ff8504b6"
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
