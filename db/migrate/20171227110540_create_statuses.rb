class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.references :pull_request, foreign_key: true
      t.integer :state
      t.string :targer_url
      t.text :description
      t.string :context

      t.timestamps
    end
  end
end
