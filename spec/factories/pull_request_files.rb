FactoryGirl.define do
  factory :pull_request_file do
    pull_request nil
    sha "MyString"
    filename "MyString"
    status 1
    additions 1
    deletions 1
    changes 1
    patch "MyString"
  end
end
