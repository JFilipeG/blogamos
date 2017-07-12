FactoryGirl.define do
  factory :comment do
    text { Faker::Lorem.paragraph }
    post
    user
  end

  trait :comment_with_empty_text do
    text nil
  end

  trait :comment_with_empty_post do
    post nil
  end

  trait :comment_with_empty_user do
    user nil
  end

end
