#!/bin/zsh

# ref: https://learn.microsoft.com/en-gb/vcpkg/get_started/get-started?pivots=shell-cmd#1---set-up-vcpkg

VCPKG_DIR="$HOME/.vcpkg/vcpkg"
brew install vcpkg
git clone https://github.com/microsoft/vcpkg "${VCPKG_DIR}"
echo "export VCPKG_ROOT=\"${VCPKG_DIR}\"" >> ~/.zshrc

