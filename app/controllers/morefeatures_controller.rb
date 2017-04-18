class MorefeaturesController < ApplicationController
    
    require 'themoviedb'
    
    
      def  Output
         
          if params[:movie][:latest].to_s.length > 0 then
               
             Tmdb::Api.key("c978035639534d35c2b47ebf1b47261e") 
             
             @movie   = Tmdb::Movie.upcoming
           # debugger
          end
          
         iLength =  @movie.size
         iLength =  iLength.to_i
        # debugger
         
         @Title1 = "Null"
        for iCounter in 0..iLength -1
            
              
          
              sIntegratedValue = @movie[iCounter -1]
           #   debugger
           
           if  iCounter == 0 then
                
              @Title0        = @movie[0].title
              @overview0     = @movie[0].overview
              @popularity0   = @movie[0].popularity
              @vote_count0   = @movie[0].vote_count
              @vote_average0 = @movie[0].vote_average
              @release_date0 = @movie[0].release_date
              @poster_path0  = @movie[0].poster_path
              
              
           end
           
            
           if  iCounter == 1 then
              @Title1        = @movie[1].title
              @overview1     = @movie[1].overview
              @popularity1   = @movie[1].popularity
              @vote_count1   = @movie[1].vote_count
              @vote_average1 = @movie[1].vote_average
              @release_date1 = @movie[1].release_date
              @poster_path1  = @movie[1].poster_path
           end
           
           
          if  iCounter == 2 then
              @Title2        = @movie[2].title
              @overview2     = @movie[2].overview
              @popularity2   = @movie[2].popularity
              @vote_count2   = @movie[2].vote_count
              @vote_average2 = @movie[2].vote_average
              @release_date2 = @movie[2].release_date
              @poster_path2  = @movie[2].poster_path
          end
 
              
           if  iCounter == 3 then
              @Title3        = @movie[3].title
              @overview3     = @movie[3].overview
              @popularity3   = @movie[3].popularity
              @vote_count3   = @movie[3].vote_count
              @vote_average3 = @movie[3].vote_average
              @release_date3 = @movie[3].release_date
              @poster_path3  = @movie[3].poster_path
           end
          
          if  iCounter == 4 then
              @Title4        = @movie[4].title
              @overview4     = @movie[4].overview
              @popularity4   = @movie[4].popularity
              @vote_count4   = @movie[4].vote_count
              @vote_average4 = @movie[4].vote_average
              @release_date4 = @movie[4].release_date
              @poster_path4  = @movie[4].poster_path
          end
          
          if  iCounter == 5 then
              @Title5        = @movie[5].title
              @overview5     = @movie[5].overview
              @popularity5   = @movie[5].popularity
              @vote_count5   = @movie[5].vote_count
              @vote_average5 = @movie[5].vote_average
              @release_date5 = @movie[5].release_date
              @poster_path5  = @movie[5].poster_path
          end
          
          if  iCounter == 6 then
              @Title6        = @movie[6].title
              @overview6     = @movie[6].overview
              @popularity6   = @movie[6].popularity
              @vote_count6   = @movie[6].vote_count
              @vote_average6 = @movie[6].vote_average
              @release_date6 = @movie[6].release_date
              @poster_path6  = @movie[6].poster_path
          end
          
          if  iCounter == 7 then
              @Title7        = @movie[7].title
              @overview7     = @movie[7].overview
              @popularity7   = @movie[7].popularity
              @vote_count7   = @movie[7].vote_count
              @vote_average7 = @movie[7].vote_average
              @release_date7 = @movie[7].release_date
              @poster_path7  = @movie[7].poster_path
          end
          
          if  iCounter == 8 then
              @Title8        = @movie[8].title
              @overview8     = @movie[8].overview
              @popularity8   = @movie[8].popularity
              @vote_count8   = @movie[8].vote_count
              @vote_average8 = @movie[8].vote_average
              @release_date8 = @movie[8].release_date
              @poster_path8  = @movie[8].poster_path
          end
          
          if  iCounter == 9 then
              @Title9        = @movie[9].title
              @overview9     = @movie[9].overview
              @popularity9   = @movie[9].popularity
              @vote_count9   = @movie[9].vote_count
              @vote_average9 = @movie[9].vote_average
              @release_date9 = @movie[9].release_date
              @poster_path9  = @movie[9].poster_path
          end
           
    end 
        
          # debugger
           
         
      end


    
    
    
end
