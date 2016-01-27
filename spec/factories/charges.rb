FactoryGirl.define do
  factory :charge do
    paid { [true, false].sample }
    amount { rand(10000) }
    currency 'usd'
    refunded { [true, false].sample }
    disputed { [true, false].sample }
  end
end
