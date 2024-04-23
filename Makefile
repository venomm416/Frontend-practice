dev:
	@cd app && npm run dev
i:
	@cd app && npm install

all: dev

clean:
	@cd app && rm -rf node_modules && rm -rf .next

build-test:
	docker build -t test-coin-app .

run-test:
	docker run --name test-coin-app-con  -p 9898:3000 -d test-coin-app

stop-test:
	docker stop test-coin-app-con
	docker rmi test-coin-app --force