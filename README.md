# ApiClientFun

Welcome!

This is a basic ruby gem scaffold to create a **client** for call to an existing API endpoint.

The api has two endpoints, responds with JSON, and is unauthenticated.

1) https://blooming-savannah-20593.herokuapp.com/api/users

Returns a list of users.

2) https://blooming-savannah-20593.herokuapp.com/api/users/{id}

Returns a specific user.



## How to use this API

### Features:

 This api_client_fun has following features:

 1. Get profile of user by

  ```
  ApiClientFun.profile_for_name('User Name')

  ```
  If user name not in the server, it will return message:i

  ```
  'error: User not found'
  ```

 2. List all users in array with command:
 
  ```
  ApiClientFun.user # => => #<HTTParty::Response:0x22588 parsed_response={"users"=>[{"company"=>"Planet Express", "id"=>1, "name"=>"Philip J Fry", "position"=>"Delivery Boy", "profile"=>{"age"=>25, "gender"=>"M", "planet"=>"Earth", "species"=>"Human", "status"=>"Alive"}}, {"company"=>"Planet Express", "id"=>2, ...

  ```

 3. Total Number of records

  ```
  ApiClientFun.user[users].count #=> 14

  ```


## Install:

### In ruby application

  Run Gem install:

  ```
  gem install api_client_fun

  ```
### In Rails Application

  Add api_client_fun in Gemfile and point to local api_client_fun exist

  Example: this gem store in /Users/YOU/api_client_fun

  Gemfile:

  ```
  gem 'api_client_fun', path: '/Users/YOU/api_client_fun'

  ```
  
### Test
  Using Rspec 

  - at root of this gem

  ```
  rspec --format documentation

  ```
