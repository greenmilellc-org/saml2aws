# Reference: https://github.com/Versent/homebrew-taps/blob/master/saml2aws.rb
require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/greenmilellc-org/saml2aws'
  version '2.26.3-gm'
  if OS.mac?
    url "https://github.com/greenmilellc-org/saml2aws/releases/download/v#{version}/saml2aws_v#{version}_darwin_amd64.tar.gz"
    sha256 '5b387013212612ef62db2a2246ae4fd6929369e1aeb4fa527c987844ae855934'
  elsif OS.linux?
    url "https://github.com/greenmilellc-org/saml2aws/releases/download/v#{version}/saml2aws_v#{version}_linux_amd64.tar.gz"
    sha256 '61d286e3f687be416412d5be7727d188ee7287b342c5568214eded35e3ccfe5a'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
