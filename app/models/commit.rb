class Commit < ApplicationRecord
  belongs_to :user
  belongs_to :pull_request
end
