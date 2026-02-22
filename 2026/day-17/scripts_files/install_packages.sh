#!/bin/bash


# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

PACKAGES=("nginx" "curl" "wget")

for PKG in "${PACKAGES[@]}"; do
  if dpkg -s $PKG &> /dev/null; then
    echo "$PKG is already installed."
  else
    echo "Installing $PKG..."
    apt-get install -y $PKG
  fi
done
