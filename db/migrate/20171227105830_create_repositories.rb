class CreateRepositories < ActiveRecord::Migration[5.0]
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :full_name
      t.integer :owner_id
      t.text :description

      t.timestamps
    end
  end
end
