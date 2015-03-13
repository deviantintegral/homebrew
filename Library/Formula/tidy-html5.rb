require 'formula'

class TidyHtml5 < Formula
  homepage 'https://github.com/htacg/tidy-html5'
  url 'https://github.com/htacg/tidy-html5.git', :revision => '09fa036b311abd3fb5ef89fa3d8aa509a0f7f0c2'
  version '4.9.21'

  depends_on "cmake" => :build

  def install
    cd "build/cmake"
    system "cmake", "../..", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    system "make", "install"
  end

  test do
    system "tidy5 --version"
  end
end
