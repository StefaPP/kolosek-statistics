class AddRepositoryReferenceToPullRequest < ActiveRecord::Migration[5.0]
  def change
    add_reference :pull_requests, :repository, foreign_key: true
  end
end
