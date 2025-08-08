#!/bin/bash
set -e  # Exit on any error

# Spectre Core Installer
# Downloads and installs core files from GitHub to /.spectre/core

# Configuration
REPO_URL="https://raw.githubusercontent.com/damaera/spectre/main"
CORE_DIR=".spectre/core"
TARGET_DIR=".spectre/core"

# Logging functions
log_info() { echo "[INFO] $1"; }
log_error() { echo "[ERROR] $1" >&2; }
log_success() { echo "[SUCCESS] $1"; }

# Error handling function
handle_error() {
    log_error "$1"
    echo "Please check: $2" >&2
    exit 1
}

# Main installation logic
main() {
    log_info "Starting Spectre Core installation..."
    
    # Create target directory
    log_info "Creating target directory..."
    mkdir -p "$TARGET_DIR" || handle_error "Failed to create directory $TARGET_DIR" "Check your permissions"
    
    # Download and install core files
    log_info "Downloading core files..."
    install_core_files
    
    # Verify installation
    log_info "Verifying installation..."
    verify_installation
    
    log_success "Installation completed successfully!"
}

# Download and install core files
install_core_files() {
    local files=("exec-tasks.md" "gen-requirement.md" "gen-tasks.md" "gen-spec.md")
    
    for file in "${files[@]}"; do
        log_info "Installing $file..."
        curl -sSL "$REPO_URL/.spectre/core/$file" -o "$TARGET_DIR/$file" || \
            handle_error "Failed to install $file" "Check your internet connection and repository access"
    done
}

# Verify installation
verify_installation() {
    local files=("exec-tasks.md" "gen-requirement.md" "gen-tasks.md" "gen-spec.md")
    local missing_files=()
    
    for file in "${files[@]}"; do
        if [ ! -f "$TARGET_DIR/$file" ]; then
            missing_files+=("$file")
        fi
    done
    
    if [ ${#missing_files[@]} -gt 0 ]; then
        handle_error "Installation incomplete. Missing files: ${missing_files[*]}" "Try running the installer again"
    fi
    
    log_info "All core files installed successfully"
}

# Execute main function
main "$@"
