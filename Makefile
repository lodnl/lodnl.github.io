.PHONY: cv site clean

# Build the CV PDF and copy it into the site
cv:
	$(MAKE) -C cv
	mkdir -p site/files
	cp cv/cv.pdf site/files/cv.pdf

# Preview the site locally at http://localhost:4000
site: cv
	cd site && bundle install && bundle exec jekyll serve -l -H localhost

clean:
	$(MAKE) -C cv clean
	rm -rf site/_site site/files/cv.pdf
