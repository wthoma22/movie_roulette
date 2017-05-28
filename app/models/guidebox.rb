class GuideBox < ApplicationRecord

  def movie(film_title)
    guidebox = GuideboxWrapper::GuideboxMovie.new("0a5a2b426dfeaec79af26be75dfa937ad786cee5", "US")
    guidebox.fetch_movie(film_title)
  end

end
