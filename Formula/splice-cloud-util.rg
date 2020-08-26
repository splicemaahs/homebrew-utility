class SpliceCloudUtil < Formula
  desc "This is a collection of tools to help Splice Machine Cloud Engineers in daily life."
  homepage "https://github.com/splicemaahs/homebrew-utility"
  url "https://github.com/splicemaahs/homebrew-utility.git"
  version "0.0.1"
  revision 1

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      def install
        bin.install "bin/linux/386/splice-cloud-util"
      end
    end
  else
    if OS.mac?
      def install
        bin.install "bin/darwin/amd64/splice-cloud-util"
      end
    elsif OS.linux?
      def install
        bin.install "bin/linux/amd64/splice-cloud-util"
      end
    end
  end
end
