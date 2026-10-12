# Lorette Danilo — CV and academic website

- `cv/`: the CV in LaTeX (English, two pages, aimed at industry recruiters).
- `site/`: the academic website, built with [Academic Pages](https://github.com/academicpages/academicpages.github.io)
  and published at <https://lodnl.github.io>.

Every push to `main` compiles the CV, copies the PDF into the site (`/files/cv.pdf`) and deploys
the site to GitHub Pages (`.github/workflows/deploy.yml`).

## Local build

- **CV**: requires a TeX distribution with `pdflatex` and `latexmk`
  (Linux: `sudo apt install texlive-latex-extra latexmk`; macOS: [MacTeX](https://www.tug.org/mactex/)).
- **Site preview**: requires [Docker](https://docs.docker.com/get-docker/) (Docker Desktop on macOS).
  Jekyll runs in a Ruby 3.2 container, so nothing Ruby-related is installed on the machine.

```sh
make cv     # builds cv/cv.pdf and copies it into the site
make site   # builds the CV, then serves the site at http://localhost:4000 (Ctrl+C to stop)
make clean  # removes build files
```

The first `make site` downloads the Ruby image and the gems (a few minutes); later runs reuse them
(gems are kept in `site/vendor/`, ignored by git).

## Updating the CV

Edit `cv/cv.tex`. The layout is in `cv/resume.sty`:

| Macro | Use |
|---|---|
| `\entry{Title}{Dates}{Organisation}{Location}` | A job or a degree |
| `\subentry{Role}{Dates}` | A role inside a job entry |
| `\skill{Label}{Content}` | A row in the Skills section |
| `\entrygap` | Space between two entries |

## Updating the website

| To change | Edit |
|---|---|
| Name, bio, sidebar links (Google Scholar, ORCID, SSRN...) | `site/_config.yml` (`author:` section) |
| Home page | `site/_pages/about.md` |
| CV page | `site/_pages/cv.md` |
| Publications and working papers | one file per paper in `site/_publications/` (`category`: `manuscripts`, `conferences` or `workingpapers`) |
| Talks | one file per talk in `site/_talks/` |
| Profile photo | replace `site/images/profile.png` |
| PDFs (papers, slides) | put them in `site/files/`, they are served at `/files/<name>.pdf` |
| Header menu | `site/_data/navigation.yml` |
