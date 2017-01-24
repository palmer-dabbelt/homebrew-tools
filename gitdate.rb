require 'formula'

class Gitdate < Formula
  url      'https://github.com/palmer-dabbelt/gitdate/archive/v0.0.3.tar.gz'
  homepage 'https://github.com/palmer-dabbelt/gitdate/'

  depends_on 'palmer-dabbelt/tools/pconfigure' => :build
  depends_on 'pkg-config' => :build

  def install
    system "pconfigure", "PREFIX = #{prefix}"
    system "make", "install"
  end
end
