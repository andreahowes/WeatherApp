# OAuth2

This is a working implementation of spring boot security oauth2. This differs from the first implementation of oAuth2 in that this implementation uses a mySQL database instead of an in memory database. 


## Getting Started

You can get started utilizing this example by cloning the project to your local machine:
```
$ git clone https://github.com/ashcreek/Oauth2Security.git
```
Then use the .sql files in the database package to create the database.

### Prerequisites

In order to execute this program you will need to install the following:
* Java JDK
* MySQL
* Gradle

## Postman Entries

* Creating Authentication Token:
http://localhost:8080/oauth/token
Authentication- Basic Auth
Username: spring-security-oauth2-read-write-client
Password: spring-security-oauth2-read-write-client-password1234
Body: form-data
grant_type password
username admin
password admin1234
client_id spring-security-oauth2-read-write-client

* Using Authentication Token for request to Resource Server:
http://localhost:8080/secured/company
Authentication- Bearer Token
Token: [insert token]


## Built With

* [Gradle](https://gradle.org/) - Dependency Management

## Author
* **Andrea Howes** - *Initial work* - [GitHub](https://github.com/ashcreek)

## Acknowledgments

Created using the tutorial: [Secure Spring REST With Spring Security and OAuth2](https://dzone.com/articles/secure-spring-rest-with-spring-security-and-oauth2
)

