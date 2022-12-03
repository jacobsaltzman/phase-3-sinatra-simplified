class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :subgenre
      t.integer :year
      t.string :image
      t.string :description
    end
  end
end
