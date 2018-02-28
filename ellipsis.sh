#!/usr/bin/env bash
#
# shinzui/rust ellipsis package

pkg.install() {
  brew install rustup-init
  rustup-init
  rustup install nightly
  rustup component add rustfmt-preview --toolchain=nightly
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
