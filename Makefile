up:
	docker compose up -d --build

down:
	docker compose down

shell:
	docker compose exec docs bash

logs:
	docker compose logs -f