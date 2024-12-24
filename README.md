# rpm-ostree Package Saver

A simple script to export installed packages from a Fedora Silverblue/Kinoite (or other rpm-ostree based) system into a neat list.

## Features

- Exports removed base packages
- Exports layered packages
- Exports locally installed packages
- Adds timestamp to export
- Saves everything in a neatly formatted file

## Requirements

- An rpm-ostree based system (like Fedora Silverblue/Kinoite)
- Bash shell

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/rpm-ostree-package-saver.git
cd rpm-ostree-package-saver
```

2. Make the script executable:
```bash
chmod +x get-packages.sh
```

## Usage

Simply run the script:

```bash
./get-packages.sh
```

The script will create a `packages.txt` file containing all packages in a nicely formatted list.

## Example output

```
Package List 2024-01-01 12:00:00
----------------------------------------
Removed Base Packages:
  - firefox
  - firefox-langpacks
  - gnome-system-monitor

Layered Packages:
  - distrobox
  - hugo
  - waydroid

Local Packages:
  - code-insiders-1.97.0-1734588790.el8.x86_64
```

## License

MIT
