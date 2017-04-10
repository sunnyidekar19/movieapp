class TheMovieDatabase
       
       include HTTParty
    
       
     def self.getMovieInfo(name)
         
      url="http://www.omdbapi.com/?t=#{name}"
    
      # debugger
       response = HTTParty.get(url)
       responsebody = JSON.parse(response.body)
      # debugger
       return responsebody
       
     end  
end