FactoryGirl.define do

  factory :user do
    first_name { "John" }
    last_name  { "Doe" }
    options do
      { hometown: "Tokyo" }
    end
  end

end
