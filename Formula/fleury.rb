class Fleury < Formula
  desc "Command-line client for Fleury"
  homepage "https://github.com/joumichy/homebrew-tap"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-86005bd95f41452c90124c4bdf8f7d8a.r2.dev/cli/releases/0.1.0/fleury_Darwin_arm64.tar.gz"
      sha256 "07efffc256b506cb58da662fe1e3ec3a906b084710a49c575401298db820c775"
    else
      url "https://pub-86005bd95f41452c90124c4bdf8f7d8a.r2.dev/cli/releases/0.1.0/fleury_Darwin_x86_64.tar.gz"
      sha256 "9c4fb5a73c50f8df2ff50a06b7d8c071e61f53de2015309b709cd063c5da3fe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-86005bd95f41452c90124c4bdf8f7d8a.r2.dev/cli/releases/0.1.0/fleury_Linux_arm64.tar.gz"
      sha256 "03022caa02ed65bd1bd914f36068ce83a5609da5c9325d60522c3c518006814e"
    else
      url "https://pub-86005bd95f41452c90124c4bdf8f7d8a.r2.dev/cli/releases/0.1.0/fleury_Linux_x86_64.tar.gz"
      sha256 "0912a9f4ebcee45b09fa66f480a5c217ffb7e25df5d53f6210facdd14f3bc79d"
    end
  end

  def install
    bin.install "fleury"
  end

  test do
    assert_match "fleury #{version}", shell_output("#{bin}/fleury version")
  end
end
