FactoryBot.define do
  factory :booking do
    total_price 1
    start_date "2020-10-21"
    end_date "2020-10-21"
    status "MyString"
    user nil
    accommodation nil
  end
end
