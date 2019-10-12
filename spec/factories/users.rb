FactoryBot.define do

  factory :user do
    first_name            {"yuki"}
    last_name             {"sato"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    sequence(:email) {Faker::Internet.email}
  end

end