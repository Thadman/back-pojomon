FactoryBot.define do
  factory :user do
    username { "Tester" }
    email { "tester@email.com" }
    password { "password" }
  end

end

def user_with_monster
  FactoryBot.create(:user) do | user |
    FactoryBot.create_list(:monster, 2, user: user)
  end
end