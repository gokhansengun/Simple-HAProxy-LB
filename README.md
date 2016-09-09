## About the repository

Setting up two Nginx web servers behind a HAProxy. 

Nginx web servers are delivering Nginx default page with Green and Yellow background colors. Very very easy setup to start with complex designs.

## Test

Use `make all` to build images and run the system. Navigate to `http://localhost:7000` to see the Nginx default image with Green and Yellow backgrounds.

### Note

Dockerfiles generated to support docker-machine in old Windows boxes which has poor volume mounting support.

