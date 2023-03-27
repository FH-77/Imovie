class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.text :synopsis,null: false
      t.string :title,null: false
      t.integer :average_rating,null: false
      t.timestamps
    end
  end
end
