class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    #render json:params[:movie]
    @movie = Movie.new(param_movie)
    @movie.save
    redirect_to @movie
  end
  
  private 
  def param_movie
    params.require(:movie).permit(:title,:release_date,:genre,:runtime)
  end
  
  def update
  end

  def edit
  end

  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
  end
end
