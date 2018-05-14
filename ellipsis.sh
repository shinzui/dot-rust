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
  cargo install cargo-watch
}

# pkg.push() {
#     git.push
# }

pkg.pull() {
  rustup self update
  rustup update
  cargo install --force racer
  cargo install --force cargo-watch
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
