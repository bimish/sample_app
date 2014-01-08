FactoryGirl.define do
  factory :user do
    name                   "Michael Shutt"
    email                  "mjshutt@gmail.com"
    password               "foobar"
    password_confirmation  "foobar"
  end
end