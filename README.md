What is Varnish Caching? You can learn it in my medium post: [Varnish nedir, nasıl çalışır?](https://53-emreyildirim.medium.com/varnish-nedir-nas%C4%B1l-%C3%A7al%C4%B1%C5%9F%C4%B1r-2971264d7999)

# Without Varnish
 - Create docker build
```sh
➜  varnish-demo git:(master)   cd application
➜  application git:(master)    docker build -t application .
```
- Run the application you built.
```sh
➜  application git:(master)    docker run -e "SPRING_PROFILES_ACTIVE=dev" -p 8080:8080 -t application
```
- The application is ready. (http://localhost:8080/)

![Started Spring Boot](/demo-images/without-varnish-application-started.png)

- Page test OK

![Started Spring Boot](/demo-images/without-varnish-application-page-load.png)


# With Varnish
 - Create docker build and run application
```sh
➜  varnish-demo git:(master) docker-compose up --build 
```
- The application is ready. (http://localhost:8000/)

![Started Spring Boot](/demo-images/with-varnish-application-started.png)

- Page test OK

![Started Spring Boot](/demo-images/with-varnish-application-page-load.png)

# Load Test with [Apache Benchmark](https://rieckpil.de/howto-simple-load-testing-with-apache-benchmark/)

- Let's put both apps into load test

Without Varnish: at port 8080, with Varnish: at port 8000

```sh
➜  application git:(master)    ab -n 5000 -c 100 http://localhost:8080/
```
```sh
➜  varnish-demo git:(master)   ab -n 5000 -c 100 http://localhost:8000/
```

Without Varnish            |  With Varnish
:-------------------------:|:-------------------------:
![](/demo-images/without-varnish-result.png)  |  ![](/demo-images/with-varnish-result.png)
