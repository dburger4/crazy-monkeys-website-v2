class WelcomeController < ApplicationController
  def index
    @welcome_element = WelcomeElement.first
  end
end
