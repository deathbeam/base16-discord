.PHONY: build sync clean help

# Default target
help:
	@echo "base16-discord Makefile"
	@echo ""
	@echo "Available targets:"
	@echo "  make build  - Build all Discord themes from base16 schemes"
	@echo "  make sync   - Sync/update base16 schemes from upstream"
	@echo "  make all    - Sync schemes and build themes"
	@echo "  make clean  - Remove all generated theme files"
	@echo "  make help   - Show this help message"

# Sync schemes from upstream
sync:
	@echo "Syncing base16 schemes..."
	@tinted-builder-rust sync
	@echo "Schemes synced successfully!"

# Build themes
build:
	@echo "Building Discord themes..."
	@tinted-builder-rust build .
	@echo "Themes built successfully!"

# Sync and build
all: sync build

# Clean generated themes
clean:
	@echo "Cleaning generated themes..."
	@rm -f themes/*.theme.css
	@echo "Themes cleaned!"
