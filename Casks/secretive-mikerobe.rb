cask "secretive-mikerobe" do
  version "4.0.2"
  sha256 "8c8595aeae023ba0f6647a5410f13ef82c17cd23f5f8024d79950eed86b2fc86"

  url "https://github.com/mikerobe/secretive/releases/download/v#{version}/Secretive.zip"
  name "Secretive (mikerobe fork)"
  desc "Secretive with keys usable while the Mac is locked, and a command line"
  homepage "https://github.com/mikerobe/secretive"

  # The app checks this fork's releases for updates itself.
  auto_updates true
  depends_on macos: :sequoia

  # Its own name, so it can be installed next to the official Secretive (a separate app, with its
  # own bundle ID and keys) while moving from one to the other.
  app "Secretive.app", target: "Secretive (mikerobe).app"
end
