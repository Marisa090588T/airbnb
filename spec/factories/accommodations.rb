FactoryBot.define do
  factory :accommodation do
    name "MyString"
    description "MyTextIsHere"
    price 100
    location "MyString"
    available false
    property_type "MyString"
    user nil
    association :user
    created_at { Time.current }  
  end

  trait :yesterday do
    created_at { 1.day.ago }
  end

  trait :one_week_ago do
    created_at { 1.week.ago }
  end

  trait :one_month_ago do
    created_at { 1.month.ago }
  end
end
