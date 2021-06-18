module Core
  FactoryBot.define do
    factory :user, class: Core::User do
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
    end

    factory :admin, class: Core::User do
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
      admin { true }
    end
  end
end