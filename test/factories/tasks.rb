FactoryBot.define do
  factory :task do
    name { generate :string }
    description { generate :string }
    author factory: :manager
    assignee factory: :manager
    expired_at { '2021-01-19' }
  end
end
