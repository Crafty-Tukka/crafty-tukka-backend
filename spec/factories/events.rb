FactoryBot.define do
  factory :event do
    name { "MyString" }
    start_time { "2022-07-22 14:56:16" }
    finish_time { "2022-07-23 14:56:16" }
    date { "2022-07-22 14:56:16" }
    description { "MyString" }
    truck { nil }
    venue { nil }
    confirmed { false }
  end
end
