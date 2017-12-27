class CreateReviewComments < ActiveRecord::Migration[5.0]
  def change
    create_table :review_comments do |t|
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true
      t.string :diff_hunk
      t.string :path
      t.integer :commit_id
      t.integer :original_commit
      t.integer :in_reply_to_id
      t.text :body

      t.timestamps
    end
  end
end
