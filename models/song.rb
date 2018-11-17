class Song < ActiveRecord::Base
    has_many :song_media
    has_many :media, through: :song_media
end
