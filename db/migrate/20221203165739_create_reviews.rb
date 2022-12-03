class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.string :comments
      t.integer :user_rating
      t.integer :scare_scale
    end
  end
end
