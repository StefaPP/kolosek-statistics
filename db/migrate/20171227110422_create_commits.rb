class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.references :user, foreign_key: true
      t.references :pull_request, foreign_key: true
      t.integer :commiter_id
      t.string :message
      t.string :commiter_email
      t.integer :comment_count
      t.integer :repo_id

      t.timestamps
    end
  end
end
