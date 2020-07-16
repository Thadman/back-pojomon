FactoryBot.define do
  
  factory :monster do
    user
    name { "Egg" }
    age { 0 }
    weight { 1 }
    hunger { 0 }
    strength { 0 }
    poop { 0 }
    sick { false }
    death { 30 }
    level { "Egg" }
  end

end