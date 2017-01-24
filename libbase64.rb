require 'formula'

class Libbase64 < Formula
  url      'https://github.com/palmer-dabbelt/libbase64/archive/v1.0.0_p4.tar.gz'
  version  '1.0.0_p4'
  homepage 'https://github.com/palmer-dabbelt/libbase64/'

  depends_on 'pkg-config' => :build
  depends_on 'cunit' => :build
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build

  def install
    system "autoreconf", "-i"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
