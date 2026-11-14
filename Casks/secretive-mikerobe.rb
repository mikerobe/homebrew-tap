cask "secretive-mikerobe" do
  version "4.0.1"
  sha256 "cd0cf69eb27191c42a97adcd8690c1f9f7aaf2263e6657d8a32d4fbba252823d"

  url "https://github.com/mikerobe/secretive/releases/download/v#{version}/Secretive.zip"
  name "Secretive (mikerobe fork)"
  desc "Secretive with keys usable while the Mac is locked, and a command line"
  homepage "https://github.com/mikerobe/secretive"

  # The app checks this fork's releases for updates itself.
  auto_updates true
  depends_on macos: ">= :sequoia"

  # Its own name, so it can be installed next to the official Secretive (a separate app, with its
  # own bundle ID and keys) while moving from one to the other.
  app "Secretive.app", target: "Secretive (mikerobe).app"
end
