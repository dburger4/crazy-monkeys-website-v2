class ShowsController < ApplicationController
  
  def info
    @shows = Show.active
    @shows_element = ShowsElement.first
  end

end