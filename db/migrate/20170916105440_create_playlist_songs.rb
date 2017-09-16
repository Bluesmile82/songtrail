class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlist_songs do |t|
      t.belongs_to :playlist, index: true
      t.belongs_to :song, index: true
      t.timestamps null: false
    end
  end
end
