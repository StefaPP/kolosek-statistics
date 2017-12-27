class CreatePullRequestFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :pull_request_files do |t|
      t.references :pull_request, foreign_key: true
      t.string :sha
      t.string :filename
      t.integer :status
      t.integer :additions
      t.integer :deletions
      t.integer :changes
      t.string :patch

      t.timestamps
    end
  end
end
