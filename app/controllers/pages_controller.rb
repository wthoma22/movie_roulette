class PagesController < ApplicationController

  def index
    @genres = Genre.all
  end

end
