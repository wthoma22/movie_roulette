class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :movie

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def guidebox
    guidebox = GuideboxWrapper::GuideboxMovie.new("0a5a2b426dfeaec79af26be75dfa937ad786cee5", "US")
  end

  def movie(movie_title)
    guidebox.fetch_movie(movie_title)
  end

end
