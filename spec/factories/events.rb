FactoryBot.define do
  factory :event do
    name { "MyString" }
    date { "2022-07-22 14:56:16" }
    start_time { "2022-07-22 14:56:16" }
    finish_time { "2022-07-22 14:56:17" }
    description { "MyString" }
    truck { nil }
    venue { nil }
    confirmed_status { true }
  end
end
