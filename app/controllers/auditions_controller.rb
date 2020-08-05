class AuditionsController < ApplicationController
  before_action :authenticate_user!, except: [ :info ]
  def info
    @auditions = Audition.active
  end

end
