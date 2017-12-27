FactoryGirl.define do
  factory :pull_request do
    number 1
    state 1
    title "MyString"
    body "MyText"
    created_at "2017-12-27 11:52:16"
    updated_at "2017-12-27 11:52:16"
    closed_at "2017-12-27 11:52:16"
    merged_at "2017-12-27 11:52:16"
    comments 1
    commits 1
    additions 1
    deletions 1
    changed_files 1
    merged_by 1
    mergeable false
    head_label "MyString"
    head_sha "MyString"
    base_label "MyString"
    base_sha "MyString"
  end
end
