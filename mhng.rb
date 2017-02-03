require 'formula'

class Mhng < Formula
  url      'https://github.com/palmer-dabbelt/mhng/archive/v0.2.1.tar.gz'
  homepage 'https://github.com/palmer-dabbelt/mhng/'

  depends_on 'palmer-dabbelt/tools/pconfigure' => :build
  depends_on 'pkg-config' => :build
  depends_on 'gnutls'
  depends_on 'msmtp'
  depends_on 'homebrew/dupes/ncurses'
  depends_on 'palmer-dabbelt/tools/psqlite'
  depends_on 'palmer-dabbelt/tools/putil'
  depends_on 'palmer-dabbelt/tools/libbase64'

  def install
    system "pconfigure", "PREFIX = #{prefix}", "LANGUAGES += c++", "COMPILEOPTS += -DCAFILE=\\\"#{prefix}/share/mhng/certs/Equifax_Secure_CA.crt\\\""
    system "make", "install"
    system "mkdir", "-p", "#{prefix}/share/mhng/certs"
    system "cp", "dist/Equifax_Secure_CA.crt", "#{prefix}/share/mhng/certs/Equifax_Secure_CA.crt"
  end
end
