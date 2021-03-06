# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  url        :string
#  author     :string
#  title      :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  has_many :playlist_songs, :class_name => 'PlaylistSong'
  has_many :playlists, through: :playlist_songs
end
