cask "gitchef" do
  version "0.39.0"
  sha256 "afafc8e3635ff5e94f3af68a02b9df576f2a30cfc758d469f132957a9be8c272"

  url "https://github.com/jcardonne/gitchef/releases/download/v#{version}/GitChef_#{version}_macOS.dmg"
  name "GitChef"
  desc "Open-source visual Git client"
  homepage "https://github.com/jcardonne/gitchef"

  # The app updates itself in the background (signature-verified Tauri
  # updater) once installed; brew tracks the initial install version.
  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GitChef.app"

  zap trash: [
    "~/Library/Application Support/com.gitchef.app",
    "~/Library/Caches/com.gitchef.app",
    "~/Library/HTTPStorages/com.gitchef.app",
    "~/Library/Preferences/com.gitchef.app.plist",
    "~/Library/Saved Application State/com.gitchef.app.savedState",
    "~/Library/WebKit/com.gitchef.app",
  ]

  caveats do
    <<~EOS
      GitChef isn't notarized by Apple yet, so Gatekeeper blocks the first
      launch. Either right-click GitChef.app in /Applications and choose
      "Open", or run:
        xattr -dr com.apple.quarantine "#{appdir}/GitChef.app"

      After the first launch, GitChef updates itself automatically.
    EOS
  end
end
