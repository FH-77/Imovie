class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id,null: false
      t.integer :movie_id,null: false
      t.text :content,null: false
      t.integer :score
      
      t.timestamps
    end
  end
end
