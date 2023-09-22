build:
	docker build -t docker-sample .

run:
	docker run --rm -p 3000:3000 docker-sample

run-dev:
	docker run \
		-p 3000:3000 \
		-v $(PWD):/usr/src/app \
		-v /usr/src/app/node_modules \
		docker-sample nodemon --inspect=0.0.0.0:9229 server.js