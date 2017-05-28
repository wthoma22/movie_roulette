class MoviesController < ApplicationController

  def index
    @q = params[:title]
    @movie = @guidebox.fetch_movie(@q)
    flash[:success] = "Your search results are below!"
    redirect_to movie_path(@movie)]
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    @comment = Comment.new
  end

  def create

  end

end
