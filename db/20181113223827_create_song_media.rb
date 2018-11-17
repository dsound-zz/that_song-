class CreateSongMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :song_media do |t|
      t.string :song_id
      t.string :media_id
    end
  end
end
