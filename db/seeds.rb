# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.


customer1 = User.create({
  first_name: 'Billy',
  last_name: 'Ocean',
  email: 'billy@test.com',
  password: 'test1234',
  password_confirmation: 'test1234'
})
puts "#{customer1.first_name} was created"

customer2 = User.create({
  first_name: 'Chris',
  last_name: 'Hughes',
  email: 'chrish@test.com',
  password: 'test1234',
  password_confirmation: 'test1234'
})
puts "#{customer2.first_name} was created"

customer3 = User.create({
  first_name: 'Billy',
  last_name: 'Walsh',
  email: 'hector@test.com',
  password: 'test1234',
  password_confirmation: 'test1234'
})
puts "#{customer3.first_name} was created"

customer4 = User.create({
  first_name: 'Ryan',
  last_name: 'Smith',
  email: 'ryan@test.com',
  password: 'test1234',
  password_confirmation: 'test1234'
})
puts "#{customer4.first_name} was created"

# create 10 successful transactions
puts 'create 10 successful transactions'

5.times do |i|
  Charge.create({
    user: customer1,
    paid: true,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: false
  })
end

3.times do |i|
  Charge.create({
    user: customer2,
    paid: true,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: false
  })
end

Charge.create({
  user: customer3,
  paid: true,
  amount: 10000 + rand(1000),
  currency: 'usd',
  refunded: false,
  disputed: false
})

Charge.create({
  user: customer4,
  paid: true,
  amount: 10000 + rand(1000),
  currency: 'usd',
  refunded: false,
  disputed: false
})

# create 5 failed transactions
puts 'create 5 failed transactions'
3.times do |i|
  Charge.create({
    user: customer3,
    paid: false,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: false
  })
end

2.times do |i|
  Charge.create({
    user: customer4,
    paid: false,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: false
  })
end

# create 5 disputed transactions
puts 'create 5 disputed transactions'
3.times do |i|
  Charge.create({
    user: customer1,
    paid: true,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: true
  })
end

2.times do |i|
  Charge.create({
    user: customer2,
    paid: true,
    amount: 10000 + rand(1000),
    currency: 'usd',
    refunded: false,
    disputed: true
  })
end