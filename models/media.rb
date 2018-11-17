class Media < ActiveRecord::Base
    has_many :song_media
    has_many :songs, through: :song_media

end
