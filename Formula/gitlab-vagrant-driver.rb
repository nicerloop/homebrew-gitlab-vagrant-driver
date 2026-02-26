class GitlabVagrantDriver < Formula
  desc "Custom GitLab Runner driver that provisions CI jobs in Vagrant VMs"
  homepage "https://github.com/nicerloop/gitlab-vagrant-driver"
  url "https://github.com/nicerloop/gitlab-vagrant-driver/archive/refs/tags/0.0.1.tar.gz"
  sha256 "8a9011927933446f0123dff9b35653f0d623e84052e0ff3ccd020f6079cfc7c7"
  license "MIT"

  def install
    bin.install "bin/gitlab-vagrant-driver"
    share.install "share/templates" => "gitlab-vagrant-driver"
  end

  test do
    system bin/"gitlab-vagrant-driver", "help"
  end
end
