# Golang API with PosgreSQL in Docker

This simple api is written in golang.

### Prerequisites
1. the knowledge of docker to use


### the settting to use

1. Install this repository into your local

 `$ git clone https://github.com/Akitsuyoshi/goWithDB`

2. Build the Docker image

 `$ docker-compose build && docker-compose up`

3. Run the test to confirm connection between db and api.

 ```
 $ docker exec -it gowithdb_go_1 bash
 $ go test -v

 ```

If you'd like to stop process, CTRL + C would work.
