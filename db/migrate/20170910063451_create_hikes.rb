class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.string :title
      t.integer :distance
      t.string :difficulty
      t.string :region
      t.text :description
      t.string :image
      t.string :link
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
