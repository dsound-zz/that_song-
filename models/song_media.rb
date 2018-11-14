class Song_Media < ActiveRecord::Base
    belongs_to :song
    belongs_to :media

end
