class Goresponsiveness < Formula
  desc "A draft-ietf-ippm-responsiveness client in Go."
  homepage "https://github.com/network-quality/goresponsiveness"

  head "https://github.com/network-quality/goresponsiveness.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "mod", "download"
    system "go", "build", "-o", bin/"networkQuality", "networkQuality.go"
  end
end

