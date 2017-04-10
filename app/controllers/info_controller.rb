class InfoController < ApplicationController
  
  require 'themoviedatabase'
  
  
  def infomovie(title)
    
    #if params[:search_movie].to_s.present?
      # title = params[:search_movie]
       
      # debugger
       response = TheMovieDatabase.getMovieInfo(title)
   
   
   ######Testing##########    
    #   title = response["Title"]
    #   year  = response["Year"]
    #  genre  = response["Genre"]
    #  director  = response["Director"]

  ###########################ss
     #  debugger
     #  @movie = Movie.find_by(:Title => title)  #  SELECT  "movies".* FROM "movies" WHERE "movies"."Title"
       
     #  debugger
     
           #if @movie.blank?
             
               @movie = Movie.create(:Title =>response["Title"] ,
                                     :Year =>response["Year"]  ,
                                     :Released =>response["Released"] , 
                                     :Genre =>response["Genre"]   ,
                                     :Director =>response["Director"] ,
                                     :Actors =>response["Actors"]  ,
                                     :Plot =>response["Plot"]  ,
                                     :Language =>response["Language"] ,
                                     :Country =>response["Country"]  ,
                                     :Poster =>response["Poster"]  ,
                                     :imdb_ID =>response["imdb_ID"]  ,
                                     :Production =>response["Production"] )
                                     
                                     
           # debugger
             # return @movie
              
            #  debugger
          # end
  #  else
        
       # debugger

            #redirect_to(root_url)

   # end  
    
    
    
    
  end

  def infoimdb
  end
end
