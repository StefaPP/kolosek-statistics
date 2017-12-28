class Commit < ApplicationRecord
  # Test PR
  belongs_to :user
  belongs_to :pull_request
end
