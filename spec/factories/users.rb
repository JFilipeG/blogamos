FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  trait :empty_email do
    email nil
  end

  trait :invalid_email do
    email 'email'
  end

  trait :empty_password do
    password nil
  end

  trait :short_password do
    password '123'
  end

end
