module Member

  class BaseController < ApplicationController
    before_action :admin_only

    def dashboard
      @welcome_element = WelcomeElement.first
    end

    private

    def admin_only
      if !current_user&.admin?
        flash[:error] = "You do not have permission to visit this page"
        redirect_to root_path
      end
    end
  end

end