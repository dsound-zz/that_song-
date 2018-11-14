class Media < ActiveRecord::Base
    has_many :song_medias
    has_many :songs, through: :song_medias

end
