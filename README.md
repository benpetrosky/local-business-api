# README

Prerequisites
postgres
rails
postman


Directions
Clone this repository onto your desktop
cd into the project directory
run postgres
in another terminal
  run bundle
  run rails db:create
  run rails db:migrate
  run rails db:seed
  run rails s

In postman
  get request localhost:3000/companies
    to see a list of the seeded companies in the api

  post request localhost:3000/companies
    fill in the body with keys name, department, and product with the values of your choice
    leaving any of the keys blank will result in an error message

  get request localhost:3000/companies/:id
    sending an id number will display the company info matching that id, if the id does not exist then request will result in an error message

  get request localhost:3000/companies?name=
    adding on a company name to the end of this request will search the api for that company by its name

  get request localhost:3000/companies?name=random
    sending this get request will result in a random companies information to be requested.

  patch request localhost:3000/companies/:id
    fill in the key value pairs you wish to update of the company with the id you send to update that companies information

  delete request localhost:3000/companies/:id
    sending the request will remove the company with that id from the database
