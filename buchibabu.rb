class BuchiBabu < Formula
    desc "BuchiBabu is a bot for generating serverless.yml templates"
    homepage "https://github.com/lakshmiNdevulapalli/Buchibabu"
    url "https://github.com/lakshmiNdevulapalli/Buchibabu/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "d1d9c75d12fea3dbd9fa7aaf1cb311e594574a1b5608e6fbd4b3fc41f164c5ce"

    depends_on "python@3.9"

    def install
        bin.install "buchibabu"
    end

    test do
        system "#{bin}/buchibabu", "--version"
    end
end