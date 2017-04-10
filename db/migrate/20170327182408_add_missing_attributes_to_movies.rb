class AddMissingAttributesToMovies < ActiveRecord::Migration
  def change
    
      add_column :movies, :Title,      :string
      add_column :movies, :Plot,       :string
      add_column :movies, :Year,       :string
      add_column :movies, :Language,   :string
      add_column :movies, :Released,   :string
      add_column :movies, :Country,    :string
      add_column :movies, :Genre,      :string
      add_column :movies, :Poster,     :string
      add_column :movies, :Director,   :string
      add_column :movies, :imdb_ID,     :string
      add_column :movies, :Actors,     :string
      add_column :movies, :Production ,:string
      
    
    
    
    
  end
end
