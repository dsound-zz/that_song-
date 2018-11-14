class CreateSongMedias < ActiveRecord::Migration[5.2]
  def change
    create_table :create_song_medias do |t|
      t.string :ablum_soundtrack
    end 
  end
end
