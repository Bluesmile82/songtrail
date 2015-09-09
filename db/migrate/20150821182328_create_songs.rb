class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :author
      t.string :times
      t.string :key
      t.string :tempo
      t.string :tab
      t.string :backing_track
      t.string :completeness
      t.string :style
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
