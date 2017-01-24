require 'formula'

class Psqlite < Formula
  url      'https://github.com/palmer-dabbelt/psqlite/archive/v0.0.5.tar.gz'
  homepage 'https://github.com/palmer-dabbelt/psqlite/'

  depends_on 'palmer-dabbelt/tools/pconfigure' => :build
  depends_on 'pkg-config' => :build
  depends_on 'sqlite3'

  def install
    system "pconfigure", "PREFIX = #{prefix}"
    system "make", "install"
  end
end
