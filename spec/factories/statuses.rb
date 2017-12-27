FactoryGirl.define do
  factory :status do
    pull_request nil
    state 1
    targer_url "MyString"
    description "MyText"
    context "MyString"
  end
end
