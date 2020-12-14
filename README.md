
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
 - Create docker build
```sh
➜  varnish-demo git:(master) docker-compose up --build 
```
- The application is ready. (http://localhost:8000/)

![Started Spring Boot](/demo-images/with-varnish-application-started.png)

- Page test OK

![Started Spring Boot](/demo-images/with-varnish-application-page-load.png)

Without Varnish            |  With Varnish
:-------------------------:|:-------------------------:
![](/demo-images/without-varnish-result.png)  |  ![](/demo-images/with-varnish-result.png)
