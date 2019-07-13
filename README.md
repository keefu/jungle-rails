# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails.

## Feature
1. Implement SoldOut
2. Admin can add or delete category
3. User Authentification 
4. Admin Authentification
5. Order page with descriptive details
6. Implement email receipt
7. Empty cart checkout notice
8. Product Review from users 

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

#Bcrypt
#Bootstrap
#Byebug
#Faker
#jQuery-Rails
#Money-Rails
#PostgreSQL 9.x
#Puma
#Rails 4.2 Rails Guide
#RMagick
#Sass
#Spring
#Stripe
