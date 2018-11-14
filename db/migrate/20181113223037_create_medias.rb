class CreateMedias < ActiveRecord::Migration[5.2]
  def change
    create_table :medias do |t|
      t.string :title
      t.string :format
      t.integer :year
      t.string :director
      t.string :actors
    end 
  end
end
