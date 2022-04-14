class Goresponsiveness < Formula
  desc "A draft-ietf-ippm-responsiveness client in Go."
  homepage "https://github.com/network-quality/goresponsiveness"

  head "https://github.com/network-quality/goresponsiveness.git"

  depends_on "go" => :build

  def install
    system "go", "mod", "download"
    system "go", "build", "networkQuality.go", "-o", bin/"networkQuality"
  end
end

