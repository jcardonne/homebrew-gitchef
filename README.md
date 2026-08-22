# homebrew-gitchef

Personal [Homebrew](https://brew.sh) tap for [GitChef](https://github.com/jcardonne/gitchef),
an open-source visual Git client.

## Install

```sh
brew tap jcardonne/gitchef
brew install --cask gitchef
```

Or in one line:

```sh
brew install --cask jcardonne/gitchef/gitchef
```

## Update

```sh
brew upgrade --cask gitchef
```

GitChef also updates itself silently in the background after install
(signature-verified auto-updater), so `brew upgrade` mainly matters for a
fresh reinstall or if you've disabled the in-app updater.

## Note on Gatekeeper

GitChef isn't notarized by Apple yet, so macOS blocks the first launch. See
the caveat printed after `brew install`, or the
[GitChef README](https://github.com/jcardonne/gitchef#install).

## Why a personal tap and not `homebrew/cask`

The official tap requires Apple notarization (hard `brew audit` failure
without it) and a notability threshold (75 stars / 30 forks / 30 watchers)
that this project doesn't meet yet. This tap is a drop-in stand-in - moving
to the official tap later only changes where users `brew tap` from.

## Cask

[`Casks/gitchef.rb`](Casks/gitchef.rb) is bumped automatically by
[gitchef's release workflow](https://github.com/jcardonne/gitchef/blob/main/.github/workflows/release.yml)
on every new version - no manual edits needed.
