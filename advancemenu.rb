class Advancemenu < Formula
  desc "Frontend for AdvanceMAME/MESS"
  homepage "http://www.advancemame.it/menu-readme.html"
  url "https://github.com/amadvance/advancemame/releases/download/advancemenu-2.8/advancemenu-2.8.tar.gz"
  sha256 "b591f85c9785997f113643f3b3e202ea849888f12553cd622ded83499301f5f5"

  bottle do
    sha256 "9397437ffb3f526f1d465e1717a05a4806aaa3c4fc7de7de21d57524f3534a4e" => :yosemite
    sha256 "22cf502d1bacbaf923a4ffe1e7259370dd7c2a0be249a9fbf2833f78e63d75a6" => :mavericks
    sha256 "2eb1572dcdd865c48ecc2bb1e6f2ff3313339c8a2d0a337524827da6b7883963" => :mountain_lion
  end

  depends_on "sdl"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install", "LDFLAGS=#{ENV.ldflags}", "mandir=#{man}"
  end

  test do
    system "advmenu", "--version"
  end
end
