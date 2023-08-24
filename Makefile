SERVICE=web
COMPOSE=compose


up:
	docker compose up

down:
	docker compose down

enter:
	docker $(COMPOSE) exec $(SERVICE) python manage.py shell