include dev.env

migrate-create:
	migrate create -ext sql -dir internal/db/migration -seq init_schema

migrate-up:
	migrate -path internal/db/migration -database ${PG_URL} -verbose up

migrate-down:
	migrate -path internal/db/migration -database ${PG_URL} -verbose down

docker-up:
	docker compose --env-file dev.env up -d

sqlc:
	sqlc generate
