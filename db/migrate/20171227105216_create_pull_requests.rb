class CreatePullRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :pull_requests do |t|
      t.integer :number
      t.integer :state
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :closed_at
      t.datetime :merged_at
      t.integer :comments
      t.integer :commits
      t.integer :additions
      t.integer :deletions
      t.integer :changed_files
      t.integer :merged_by
      t.boolean :mergeable
      t.string :head_label
      t.string :head_sha
      t.string :base_label
      t.string :base_sha

      t.timestamps
    end
  end
end
