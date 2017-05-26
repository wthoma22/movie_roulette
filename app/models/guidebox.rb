class GuideBox < ApplicationRecord

  def genre_list
    GET http://api-public.guidebox.com/v2/genres
    genres = guidebox.genre.list
  end

end
