class Splicectl < Formula
  desc "This is the control CLI for Splice Machine databases on Kubernetes"
  homepage "https://github.com/splicemaahs/homebrew-utility"
  url "https://github.com/splicemaahs/homebrew-utility.git"
  version "0.0.10"

  if Hardware::CPU.is_32_bit?
    if OS.mac?
      def install
        bin.install "bin/darwin/386/splicectl"
      end
    elsif OS.linux?
      def install
        bin.install "bin/linux/386/splicectl"
      end
    end
  else
    if OS.mac?
      def install
        bin.install "bin/darwin/amd64/splicectl"
      end
    elsif OS.linux?
      def install
        bin.install "bin/linux/amd64/splicectl"
      end
    end
  end

  def caveats; <<~EOS
    Currently the use of splicectl REQUIRES that KUBECONFIG environment 
    variable be exported.

    export KUBECONFIG=~/.kube/config

    auto-selecting ~/.kube/config will be fixed in an upcoming update.

  EOS
  end
end
