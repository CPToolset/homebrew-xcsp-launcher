class Xcsp < Formula
  desc "Unified launcher for XCSP3 solvers"
  homepage "https://github.com/CPToolset/xcsp-launcher"
  url "https://github.com/CPToolset/xcsp-launcher/releases/download/v0.1.0a7/xcsp-0.1.0a7-macos.tar.gz"
  sha256 "1260f946b133f6129e9801032592c0179c9d9f6b582d37e1700ccb5d05ab8b46"
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
