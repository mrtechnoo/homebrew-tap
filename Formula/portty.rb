class Portty < Formula
  desc "Securely share a terminal with a paired phone"
  homepage "https://github.com/mrtechnoo/portty"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/mrtechnoo/portty/releases/download/v0.1.3/portty-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "0e3caa56f6cdb2f01ad54303eb31a429152dc5863f16632644f778516a645da1"
    end
    on_intel do
      url "https://github.com/mrtechnoo/portty/releases/download/v0.1.3/portty-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "05cf4cd48d460eab767cb2dcfe935a11198e6ec89b2dc550cacce3dde7472a84"
    end
  end

  def install
    bin.install "portty", "portty-host"
    prefix.install "LICENSE", "NOTICE", "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match "portty #{version}", shell_output("#{bin}/portty --version")
    assert_match "portty-host #{version}", shell_output("#{bin}/portty-host --version")
  end
end
