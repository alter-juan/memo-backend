init:
	test -n "$(name)"
	rm -rf ./.git
	find ./ -type f -exec perl -pi -e 's/memo_backend/$(name)/g' *.* {} \;
	mv ./memo_backend ./$(name)

superuser:
	docker exec -it memo_backend-web ./manage.py createsuperuser

bash:
	docker exec -it memo_backend-web bash

shell:
	docker exec -it memo_backend-web ./manage.py shell

makemigrations:
	docker exec -it memo_backend-web ./manage.py makemigrations

migrate:
	docker exec -it memo_backend-web ./manage.py migrate

test:
	docker exec -it memo_backend-web ./manage.py test

statics:
	docker exec -it memo_backend-web ./manage.py collectstatic --noinput

makemessages:
	docker exec -it memo_backend-web django-admin makemessages

compilemessages:
	docker exec -it memo_backend-web django-admin compilemessages
