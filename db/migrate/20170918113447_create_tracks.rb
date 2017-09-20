class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :hike, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
    add_attachment :tracks, :gpx
  end
end
