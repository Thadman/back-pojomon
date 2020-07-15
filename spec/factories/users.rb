FactoryBot.define do
  factory :user do
    username { "Tests" }
    email { "test@email.com" }
    password_digest { "Tested01" }
  end
end
