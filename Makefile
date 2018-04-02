.DEFAULT_GOAL=bash

build:
	docker build -t "peleteiro/fake-s3-https:latest" -f Dockerfile .

bash:
	@docker run \
		--volume `pwd`/cert:/srv/cert \
		--env HTTPS_CERT_PATH=/srv/cert/fakes3.crt \
		--env HTTPS_KEY_PATH=/srv/cert/fakes3.key \
		--env PORT=5123 -p 5123:5123 \
		-it "peleteiro/fake-s3-https" bash

run:
	@docker run \
		--volume `pwd`/cert:/srv/cert \
		--env HTTPS_CERT_PATH=/srv/cert/fakes3.crt \
		--env HTTPS_KEY_PATH=/srv/cert/fakes3.key \
		--env PORT=5123 -p 5123:5123 \
		-it "peleteiro/fake-s3-https"
