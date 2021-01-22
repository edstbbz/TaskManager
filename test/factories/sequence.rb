FactoryBot.define do
  sequence :first_name do |n|
    "first_name#{n}"
  end

  sequence :last_name do |n|
    "last_name#{n}"
  end

  sequence :password do |n|
    "password#{n}"
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence :avatar do |n|
    "avatar#{n}"
  end

  sequence :description do |n|
    "description#{n}"
  end

  sequence :expired_at do |n|
    Time.now + n.days
  end
end
