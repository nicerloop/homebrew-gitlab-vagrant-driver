class GitlabVagrantDriver < Formula
  desc "Custom GitLab Runner driver that provisions CI jobs in Vagrant VMs"
  homepage "https://github.com/nicerloop/gitlab-vagrant-driver"
  url "https://github.com/nicerloop/gitlab-vagrant-driver/archive/refs/tags/0.0.3.tar.gz"
  sha256 "bd4581600e3657feddcac71fcfcfb741812512ecbc9e9a73cb63b6e03e4a4b71"
  license "MIT"

  def install
    bin.install "bin/gitlab-vagrant-driver"
    share.install "share/templates" => "gitlab-vagrant-driver"
  end

  test do
    system bin/"gitlab-vagrant-driver", "help"
  end
end
