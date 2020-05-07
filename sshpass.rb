# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sshpass < Formula
  desc "Mirror of http://sourceforge.net/projects/sshpass/ with support of auto confirmation and 2-Step Verification!"
  homepage ""
  url "https://github.com/xvjiarui/sshpass/archive/1.07.tar.gz"
  sha256 "2385fdbffbdb17af1f073bd24a873fc53e6f802951d3267d2c5aa70dedd462b9"
  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
