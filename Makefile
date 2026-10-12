.PHONY: cv site clean

# Build the CV PDF and copy it into the site
cv:
	$(MAKE) -C cv
	mkdir -p site/files
	cp cv/cv.pdf site/files/cv.pdf

# Preview the site locally at http://localhost:4000 (requires Docker, works the same on Linux and macOS)
site: cv
	docker run --rm -it -p 4000:4000 \
	  -u $$(id -u):$$(id -g) -e HOME=/tmp -e JEKYLL_ENV=local -e BUNDLE_PATH=vendor/bundle \
	  -v "$(CURDIR)/site":/srv/site -w /srv/site ruby:3.2 \
	  bash -c "bundle install && bundle exec jekyll serve -H 0.0.0.0 --force_polling --config _config.yml,_config.local.yml"

clean:
	$(MAKE) -C cv clean
	rm -rf site/_site site/.jekyll-cache site/files/cv.pdf
