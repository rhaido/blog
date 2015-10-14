run_blog=run-blogdown

all: build upload

clean:
	rm -rf _build

build:
	$(run_blog) build

rebuild:
	rm -rf _build
	$(run_blog) build

serve:
	$(run_blog) serve

upload:
	rsync -e ssh -avz _build/ mike@blog.grozak.com:/apps/grozak.com/blog/_build/
