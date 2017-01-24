require 'formula'

class Putil < Formula
  url      'https://github.com/palmer-dabbelt/putil/archive/v0.0.5.tar.gz'
  homepage 'https://github.com/palmer-dabbelt/putil/'

  depends_on 'palmer-dabbelt/tools/pconfigure' => :build
  depends_on 'pkg-config' => :build
  depends_on 'palmer-dabbelt/tools/gitdate'

  def install
    system "pconfigure", "PREFIX = #{prefix}"
    system "make", "install"
  end
end
