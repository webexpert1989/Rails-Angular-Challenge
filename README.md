
Wb Project
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.2
- Rails 4.2.2

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
=======
# Rails Programming Task

### In order to be considered for a Rails position, you must complete the following steps.

*Note: This task should take no longer than 1-2 hours at the most to complete.*


### Prerequisites

- Please note that this will require basic [Ruby on Rails](http://rubyonrails.org/), [Agular](https://angularjs.org/) and [RSpec](http://rspec.info/) knowledge. 

- You will need to have [Ruby on Rails](http://www.rubyonrails.org/) and [Agular](https://angularjs.org/) installed to complete this task. 


## Task

- Fork this repository
- Create a *source* directory.
- In the *source* directory, scaffold a simple Rails 4 web app that models a user and credit card charge. JSON data structure below: 

```
  {
    "id": 56165,
    "created": 1389618241,
    "paid": true,
    "amount": 4900,
    "currency": "usd",
    "refunded": false,
    "customer_id": 123,
    "disputed" : false
  }
```

    *Note: Amount is in USD, cents*

- Also scaffold a user object which has a first, last name, and email. 

*The charge object has a customer property, this property is the customer id from the customer model.*

##### Seed 4 Customers into the system:


    Customer 1: 
      First Name: Billy 
      Last Name: Ocean
      Email: billy@test.com
      Password: test1234

    Customer 2: 
      First Name: Chris
      Last Name: Hughes
      Email: chrish@test.com
      Password: test1234

    Customer 3: 
      First Name: Billy 
      Last Name: Walsh
      Email: hector@test.com
      Password: test1234

    Customer 4: 
      First Name: Ryan
      Last Name: Smith
      Email: ryan@test.com
      Password: test1234


  
##### Seed 20 transactions (charges) into the system:

    10 Should be successful transactions:
      - 5 Should be linked to Customer 1
      - 3 Should be linked to Customer 2
      - 1 Should be linked to Customer 3
      - 1 Should be linked to Customer 4
    
    5 Should be transactions that failed:
      - 3 Should be linked to Customer 3
      - 2 Should be linked to Customer 4
    
    5 should be disputed:
      - 3 should be linked to Customer 1
      - 2 should be linked to customer 2


##### Create a login and authorization page using devise:  

Customers may view only their own transaction, except for Customer #1, who should be able to view all transactions from any user.  All users must have a valid email address.  Please pay attention to security, authorization and access. 



##### Route everything through Angular using Angular controllers:

Do not use default Rails routes or controllers.  


##### Create a Visual Representation of Different Charges:

On the view that shows all charges (most likely the *GET /charges* route), create three lists with H1 headers. 

- List 1 - 
  - Header: Failed Charges
  - In this list set the background color of the rows to #FF0000 and list the Customers full name, the charge amount and the date that the charge failed for each failed charge. 

- List 2 - 
  - Header: Disputed Charges
  - In this list set the background color of the rows to ##FF5400 and list the Customers full name, sorted in reverse alphabetical order (from last name), the charge amount and the date that the charge was disputed for each disputed charge. 


- List 3 - 
  - Header: Successful Charges
  - In this list simply display all the charges that were successful. 


### Tests

Create the following RSpec tests:

  1.  Verify that there are three lists on the screen. One for successful charges, one for failed charges and one for the disputed charges. 
  2.  Verify that in the Successful charges list there are 10 line items. Verify that in the failed charges list there are 5 failed charges. Verify that in the disputed charges list there are failed charges. 


## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you


## What we are looking for:
-	Clean, readable code, using  best practices and naming conventions
-	Solid understanding of Rails using Angular
-	Attention to detail

