class AuditionsController < ApplicationController
  before_action :authenticate_user!, except: [ :info ]
  def info

  end

  def new

  end

end
