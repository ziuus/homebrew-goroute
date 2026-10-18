class Goroute < Formula
  desc "Ultra-lightweight (<15MB RAM) LLM gateway and multi-agent router in Go"
  homepage "https://github.com/ziuus/goroute"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziuus/goroute/releases/download/v0.2.4/goroute_Darwin_arm64.tar.gz"
      sha256 "c1cb1cb484f7757c496eaa70fc1d7d6443031c741824c87770463de184ce0ee5"
    else
      url "https://github.com/ziuus/goroute/releases/download/v0.2.4/goroute_Darwin_x86_64.tar.gz"
      sha256 "574214314a65d7865ac64997fc82ed3e225bf162ae63b38e8aaab38726466308"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziuus/goroute/releases/download/v0.2.4/goroute_Linux_arm64.tar.gz"
      sha256 "dee4c6b90035c35c8cb5f0791682d12a0b859a6feab1e55c8f772003e6fb59bc"
    else
      url "https://github.com/ziuus/goroute/releases/download/v0.2.4/goroute_Linux_x86_64.tar.gz"
      sha256 "fb62e6d965be8107e705579eed4eb6049be3b2e597140638aeba75b971d76552"
    end
  end

  def install
    bin.install "goroute"
  end

  test do
    assert_match "goroute", shell_output("#{bin}/goroute --help")
  end
end
