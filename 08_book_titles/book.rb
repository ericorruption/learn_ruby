require_relative "../03_simon_says/simon_says"

class Book
  def title
    @title
  end

  def title=(name)
    @title = titleize(name)
  end
end
