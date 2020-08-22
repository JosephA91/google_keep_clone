class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.string :name, null: false
      t.text :body
      t.datetime :archived_at

      t.timestamps null: false
    end
  end
end
