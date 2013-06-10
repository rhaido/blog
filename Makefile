run_blog=run-blogdown

all: build upload

clean:
	rm -rf _build

build:
	$(run_blog) build

serve:
	$(run_blog) serve

upload:
	scp -p -r _build mike@grozak.com:/apps/grozak.com/blog/
	@echo "Done..."

release:
	ssh mike@grozak.com 'cd /apps/grozak.com/blog; . ../bin/activate; git pull; make build'
	@echo "Done..."
