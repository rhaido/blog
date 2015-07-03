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
