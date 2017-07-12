FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.paragraph }
    user
  end

  trait :empty_title do
    title nil
  end

  trait :empty_text do
    text nil
  end

  trait :empty_user do
    user nil
  end

end
