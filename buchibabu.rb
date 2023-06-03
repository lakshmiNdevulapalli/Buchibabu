class Buchibabu < Formula
    desc "BuchiBabu is a bot for generating serverless.yml templates"
    homepage "https://github.com/lakshmiNdevulapalli/Buchibabu"
    url "https://github.com/lakshmiNdevulapalli/Buchibabu/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "e1b6d1b98a4fbe9ff79d9b5048e8ef473ee62234b48218780f9e18b7564e4054"

    depends_on "python@3.9"

    def install
        bin.install "buchibabu"
    end

    test do
        system "#{bin}/buchibabu", "--version"
    end
end