class Admin::MoviesController < ApplicationController
  def new
  	@movie = Movie.new
  end

  def edit
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def create
  	@movie = Movie.new(movie_params)
  	if @movie.save
  	redirect_to admin_homes_movie_path
  else
  	render :new
  end
  end

  def update
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to admin_homes_movie_path
  end

  private
  def movie_params
  	params.require(:movie).permit(:title, :movie, :image)
  end
end
