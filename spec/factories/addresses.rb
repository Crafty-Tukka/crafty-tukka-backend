FactoryBot.define do
  factory :address do
    street { "MyString" }
    suburb { "MyString" }
    postcode { "MyString" }
    state { "MyString" }
    country { "MyString" }
    venue { nil }
  end
end
