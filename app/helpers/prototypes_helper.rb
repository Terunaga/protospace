module PrototypesHelper

  def main_thumbnail
    thumbnails.main.first.name
  end

  def first_thumbnail
    thumbnails.sub.first.name?
  end

  def second_thumbnail
    thumbnails.sub.second.name?
  end

  def show_first_thumbnail
    thumbnails.sub.first.name
  end

  def show_second_thumbnail
    thumbnails.sub.second.name
  end
end


