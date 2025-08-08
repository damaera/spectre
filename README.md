# Spectre Core Installer

A simple installer for the Spectre core functionality that allows users to install the core files with a single command.

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/damaera/spectre/main/install.sh | sh
```

## What it does

- Downloads and installs the `/.spectre/core` directory contents
- Creates the `/.spectre/core` directory if it doesn't exist
- Preserves the directory structure of core files
- Provides clear feedback during installation
- Handles errors gracefully

## Requirements

- Unix-like system (macOS, Linux)
- `curl` command available

## Usage

After installation, the Spectre core functionality will be available in `~/.spectre/core/`.

### Installed Files

The installer downloads and installs the following core files:
- `gen-requirement.md` - Requirement generation rules
- `gen-tasks.md` - Task generation rules
- `gen-spec.md` - Technical specification generation rules
- `exec-tasks.md` - Task execution guidelines

