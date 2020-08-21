class WelcomeController < ApplicationController
  def index
    @videoid = "QiKgzXA7FKk"
    @welcome_element = WelcomeElement.first
  end
end
