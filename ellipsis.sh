#!/usr/bin/env bash
#
# shinzui/rust ellipsis package

pkg.install() {
  brew install rustup-init
  rustup-init
  rustup component add rustfmt-preview --toolchain=stable
  rustup component add rust-src
  rustup install nightly
  rustup component add rustfmt-preview --toolchain=nightly
  cargo install racer
}

# pkg.push() {
#     git.push
# }

pkg.pull() {
  rustup self update
  rustup update
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
