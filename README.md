# Annaliese Paulson — Academic Website

Built with [academicpages](https://github.com/academicpages/academicpages.github.io) (Jekyll).
Theme files are vendored locally at commit `84f33b4` — the site has no runtime theme dependencies.

## First-Time Setup

Run once to vendor all theme files (layouts, includes, Sass, fonts, webfonts) into this directory:

```bash
cd "/Users/annaliesepaulson/Brown Dropbox/Annaliese Paulson/claude"
bash website/setup_theme.sh
```

Then install Ruby dependencies and serve locally:

```bash
cd website
bundle install
bundle exec jekyll serve
# Preview at http://localhost:4000
```

## Font Awesome note

`_includes/head.html` currently loads Font Awesome from cdnjs as a fallback.
Once you have rerun `setup_theme.sh` (which copies `assets/webfonts/`), you can
remove those two CDN lines from `head.html` for a fully self-contained site.

## Updating Content

All content lives in `_pages/` as Markdown files — edit directly and re-run `bundle exec jekyll serve`.
To update social links or affiliation, edit the `author:` section in `_config.yml`.

## Deploying to GitHub Pages

### One-time setup

1. Create a repo named `annaliesepaulson.github.io` on github.com
2. Under **Settings → Pages**, set Source to **GitHub Actions**

### First push

```bash
cd "/Users/annaliesepaulson/Brown Dropbox/Annaliese Paulson/claude/website"
git init
git add .
git commit -m "initial site"
git branch -M main
git remote add origin https://github.com/annaliesepaulson/annaliesepaulson.github.io.git
git push -u origin main
```

The `.github/workflows/deploy.yml` GitHub Actions workflow builds and deploys automatically
on every push to `main`. Visit `https://annaliesepaulson.github.io` once the action completes
(usually ~2 minutes).

### Subsequent updates

```bash
git add .
git commit -m "describe your change"
git push
```

## Directory Structure

```
├── .github/workflows/deploy.yml  # GitHub Actions build + deploy
├── .gitignore
├── _config.yml                   # Site settings and author info
├── _layouts/                     # Vendored theme layouts (do not edit)
├── _includes/                    # Vendored theme partials (do not edit)
├── _sass/                        # Vendored theme styles (do not edit)
├── _data/
│   └── navigation.yml            # Top navigation links
├── _pages/
│   ├── about.md                  # Bio / home page
│   ├── research.md               # Papers and abstracts
│   ├── teaching.md               # Teaching resources and notebooks
│   └── cv.md                     # Curriculum vitae
├── assets/
│   ├── images/profile.jpg        # Headshot
│   ├── webfonts/                 # Font Awesome (after running setup_theme.sh)
│   ├── css/                      # Vendored
│   └── js/                       # Vendored
├── files/
│   └── Annaliese_Paulson_CV.pdf
└── setup_theme.sh                # One-time theme vendoring script
```
