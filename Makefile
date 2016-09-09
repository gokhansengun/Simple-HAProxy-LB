all:
	docker-compose up -d nginx1
	docker-compose up -d nginx2
    
	sleep 5
	
	docker run --name haproxy -p 7000:55000 --restart unless-stopped gsengun/simple-ha-proxy:1.0

clean:
	docker-compose down -v