class AddGithubIdToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :github_id, :integer
  end
end
