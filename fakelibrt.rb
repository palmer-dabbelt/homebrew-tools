require 'formula'

class Fakelibrt < Formula
  url      'https://github.com/palmer-dabbelt/fakelibrt/archive/v1.0.0.tar.gz'
  homepage 'https://github.com/palmer-dabbelt/fakelibrt/'

  depends_on 'palmer-dabbelt/tools/pconfigure' => :build

  def install
    system "pconfigure", "PREFIX = #{prefix}"
    system "make", "install"
  end
end
