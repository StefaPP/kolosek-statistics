FactoryGirl.define do
  factory :review_comment do
    user nil
    review nil
    diff_hunk "MyString"
    path "MyString"
    commit_id 1
    original_commit 1
    in_reply_to_id 1
    body "MyText"
  end
end
