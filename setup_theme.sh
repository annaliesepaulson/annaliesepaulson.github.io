#!/bin/bash
# Run once from the directory *containing* the website/ folder.
# Clones academicpages at a pinned commit, then overlays your content on top.
#
# Usage:
#   cd "/Users/annaliesepaulson/Brown Dropbox/Annaliese Paulson/claude"
#   bash website/setup_theme.sh

set -e

WEBSITE_DIR="$(cd "$(dirname "$0")" && pwd)"
THEME_COMMIT="84f33b421d85f49952c98888ab544ebbe1b52861"
STAGING_DIR="$(dirname "$WEBSITE_DIR")/.theme_staging"

echo "==> Cloning academicpages at pinned commit ${THEME_COMMIT}..."
git clone https://github.com/academicpages/academicpages.github.io.git "$STAGING_DIR"
cd "$STAGING_DIR"
git checkout "$THEME_COMMIT"

echo "==> Copying theme files into website/..."
for dir in _layouts _includes _sass; do
  cp -r "$STAGING_DIR/$dir" "$WEBSITE_DIR/"
done

# Copy all asset subdirectories except images/ (preserve yours)
for dir in css js fonts webfonts; do
  if [ -d "$STAGING_DIR/assets/$dir" ]; then
    cp -r "$STAGING_DIR/assets/$dir" "$WEBSITE_DIR/assets/"
  fi
done

# Copy favicon if present
cp "$STAGING_DIR/favicon.ico" "$WEBSITE_DIR/" 2>/dev/null || true

echo "==> Cleaning up staging clone..."
rm -rf "$STAGING_DIR"

echo ""
echo "Done. Theme vendored at commit ${THEME_COMMIT}."
echo "Run: cd website && bundle install && bundle exec jekyll serve"
