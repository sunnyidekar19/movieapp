
class MoviesController < ApplicationController
   before_filter :check_for_subscription, only: :show
  
  
 require 'info_controller'
  
  
  
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    
    
    if params[:search_movie].to_s.present?
       title = params[:search_movie]
      
    oMovie = InfoController.new
    @movie = oMovie.infomovie(title)
  #  debugger

    end
   # @movie = Movie.new(movie_params)


    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:Title, :Year      , :Released , :Genre ,  :Director , :Actors ,
                                    :Plot , :Language  , :Country  , :Poster , :imdb_ID  ,  :Production  )
    end
    
    def check_for_subscription
        unless current_user.subscription.active
        flash[:alert] = "You must be subscribed to access this content"
        redirect_to movies_path
        end
    end
end
