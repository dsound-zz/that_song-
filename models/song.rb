class Song < ActiveRecord::Base
    has_many :song_medias
    has_many :medias, through: :song_medias
end
