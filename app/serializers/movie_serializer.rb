class MovieSerializer < ActiveModel::Serializer
  attributes :Title, :Year , :Released , :Genre , :Director , :Actors ,
             :Plot , :Language , :Country  , :Poster , :imdb_ID  ,  :Production
end
