all:
	docker-compose up -d nginx_web1
	docker-compose up -d nginx_web2
	
	sleep 2
	
	docker-compose up haproxy

clean:
	docker-compose down -v
	docker rmi $$(docker images | grep "^nginx_behind_ha_proxy" | awk '{print $$3}')