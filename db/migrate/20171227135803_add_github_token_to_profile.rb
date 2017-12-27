class AddGithubTokenToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :github_token, :string
  end
end
