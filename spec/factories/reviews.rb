FactoryGirl.define do
  factory :review do
    user nil
    body "MyText"
    commit_id 1
    state 1
  end
end
