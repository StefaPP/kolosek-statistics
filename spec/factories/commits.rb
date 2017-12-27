FactoryGirl.define do
  factory :commit do
    user nil
    pull_request nil
    commiter_id 1
    message "MyString"
    commiter_email "MyString"
    comment_count 1
    repo_id 1
  end
end
