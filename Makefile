setup:
	apk --no-cache add build-base lftp
	# sudo gem install bundler
	bundle install

update:
	bundle update

serve:
	bundle exec jekyll serve -H 127.0.0.1

build:
	rm -rf _site
	bundle exec jekyll build --destination _site --trace

lint:
	bundle exec jekyll doctor
	bundle exec htmlproofer ./_site --disable-external --no-enforce-https
