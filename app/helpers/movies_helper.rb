module MoviesHelper


  #replace old date code on view with <%= formatted_date(@movie.release_date) %>
  def formatted_date(date)
    date.strftime('%b %d, %Y')
  end

end
