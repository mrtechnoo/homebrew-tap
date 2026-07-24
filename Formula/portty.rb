class Portty < Formula
  desc "Securely share a terminal with a paired phone"
  homepage "https://github.com/mrtechnoo/portty"
  version "0.1.0"
  # Freeware, closed source — the full license ships in each archive (LICENSE.txt)
  # and is installed alongside the binaries below.

  on_macos do
    on_arm do
      url "https://github.com/mrtechnoo/portty/releases/download/v0.1.0/portty-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e52c2a4a3a907d9dbdfb1354dcd6014ad1789ca37176763a698c511d41cd960b"
    end
    on_intel do
      url "https://github.com/mrtechnoo/portty/releases/download/v0.1.0/portty-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4fbba3f0f24f147721a8a4600304e8055e0327d7890b015295f53335d71d4a8"
    end
  end

  def install
    bin.install "portty", "portty-host"
    prefix.install "LICENSE.txt"
  end

  test do
    assert_match "portty #{version}", shell_output("#{bin}/portty --version")
    assert_match "portty-host #{version}", shell_output("#{bin}/portty-host --version")
  end
end
