FactoryBot.define do
  factory :monster do
    user { nil }
    name { "MyString" }
    age { 1 }
    weight { 1 }
    hunger { 1 }
    strength { 1 }
    poop { 1 }
    sick { false }
    death { 1 }
    level { "MyString" }
  end
end
