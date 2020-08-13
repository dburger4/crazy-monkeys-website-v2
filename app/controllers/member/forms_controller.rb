module Member
  class FormsController < BaseController

  def index
    @forms = Form.all
    @users = User.all
    @auditions = Audition.all
  end

  end
end