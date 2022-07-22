FactoryBot.define do
  factory :event do
    name { "MyString" }
    start { "2022-07-22 14:56:16" }
    finish { "2022-07-22 14:56:16" }
    description { "MyString" }
    truck { nil }
    venue { nil }
    confirmed_status { false }
  end
end
