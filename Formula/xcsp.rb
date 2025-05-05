class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a1/xcsp-0.1.0a1-macos.tar.gz"
  sha256 "509e3fcb56d9ce8f22cd20d6b41a501a66496322a869a93d20eef88235a55457"
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
