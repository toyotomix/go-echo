all: 

# イメージのビルド
build:
	docker-compose build

# コンテナ起動
up:
	docker-compose up -d

# コンテナ停止 & 削除
down:
	docker-compose down

# 起動したコンテナに入る
exec:
	docker-compose exec app /bin/bash

# 起動 & 停止時に自動でコンテナなどを削除
go-run:
	docker-compose run --service-ports --rm app go run server.go

# 依存関係のダウンロードなど
go-mod-tidy:
	docker-compose run --rm app go mod tidy

# バージョン確認
go-version:
	docker-compose run --rm app go version
