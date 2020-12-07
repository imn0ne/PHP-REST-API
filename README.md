# PHP-REST-API

simple REST API with PHP and use MVC model in this project. 

## Database Configuration
This project has a config file that lets you store your database connection values (username, password, database name). The config file is located at app/Config/Database.php
## Usage
GET : you can submit three parameters via URL.(after "/countries/", first parameter for country_id, second parameter for page(pagination) and third for pagesize).if you set the coutry_id to 0, return all the countries.
```
http://localhost/php-rest-api/countries/
or
http://localhost/php-rest-api/countries/0/1/10
request_method => GET
```
Insert : you must submit a json data in request body
```
{
   "name": "test",
   "num_code" : 1,
   "phone_code" : 1
}

URL
http://localhost/php-rest-api/countries/       
request_method => POST
```

Update : you must submit a json data in request body
```
{
   "country_id" : 1,
   "name": "test",
   "num_code" : 1,
   "phone_code" : 1
}

URL
http://localhost/php-rest-api/countries/
request_method => PUT
```
Delete : you must submit country_id in URL

```
http://localhost/php-rest-api/countries/12
request_method => DELETE
```