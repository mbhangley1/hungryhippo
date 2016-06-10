class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :date
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
