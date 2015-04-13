FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email_#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end

  trait :admin do
    email "admin@example.com"
  end

  factory :admin, traits: [:admin]

end
