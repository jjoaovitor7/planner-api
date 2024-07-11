# planner-api
Projeto desenvolvido durante o NLW Journey.

#### Diretivas go:generate
```go
//go:generate goapi-gen --package=spec --out ./internal/api/spec/planner.gen.spec.go ./internal/api/spec/planner.spec.json
//go:generate tern migrate --migrations ./internal/pgstore/migrations/ --config ./internal/pgstore/migrations/tern.conf
//go:generate sqlc generate -f ./internal/pgstore/sqlc.yaml
```