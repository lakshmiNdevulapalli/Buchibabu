class Buchibabu < Formula
    desc "Short description of Buchibabu"
    homepage "https://github.com/lakshmiNdevulapalli/homebrew-buchibabu"
    url "https://github.com/lakshmiNdevulapalli/homebrew-buchibabu/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "08581207089869e37d7c7fbed33bea3e64802d12ac42bcbd0e128aa1a868eea6"
  
    def install
      # update this with how your program should be installed
      bin.install "buchibabu"
    end
  
    test do
      # update this with how your program should be tested
      system "#{bin}/buchibabu", "--version"
    end
  end
  