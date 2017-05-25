class CommentsController < ApplicationController

  def new
    @comment = Comment.new()
  end

  def show

  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Your comment has been added!"
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
