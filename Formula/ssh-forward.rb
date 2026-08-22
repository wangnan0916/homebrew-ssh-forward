class SshForward < Formula
  desc "Forward Linux development-host ports to localhost through system OpenSSH"
  homepage "https://github.com/wangnan0916/ssh-forward"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangnan0916/ssh-forward/releases/download/v0.1.0/ssh-forward_0.1.0_darwin_arm64.tar.gz"
      sha256 "0ad681a11ee60470c09e5047bdf3d478ee40a935de0ada5e81084e3d60226d24"
    else
      url "https://github.com/wangnan0916/ssh-forward/releases/download/v0.1.0/ssh-forward_0.1.0_darwin_amd64.tar.gz"
      sha256 "0fed07a05ba0828ad75f2d7445d11959569043cdf2438fd6393e72086d2e7425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wangnan0916/ssh-forward/releases/download/v0.1.0/ssh-forward_0.1.0_linux_arm64.tar.gz"
      sha256 "59528dd674e45da51bb5e0bf1114918561133b49f0126e81948523dcd5eb79b9"
    else
      url "https://github.com/wangnan0916/ssh-forward/releases/download/v0.1.0/ssh-forward_0.1.0_linux_amd64.tar.gz"
      sha256 "afe3197467ae37f8e3e54a7b34efdfc9b1c97d2af333d8d6eee5d7dd91d1ff2a"
    end
  end

  def install
    bin.install "ssh-forward"
  end

  test do
    assert_match "ssh-forward #{version}", shell_output("#{bin}/ssh-forward --version")
  end
end
