module Member
  class WelcomeElementsController < BaseController
    before_action :get_welcome_element, only: [:edit, :update]

    def edit
      
    end

    def update
      if @welcome_element.update(welcome_element_params)
        flash[:notice] = "Updated Welcome Page Element"
      else
        flash[:error] = "Could not update Welcome Page Element"
      end
      redirect_to member_dashboard_path
    end

    private

    def get_welcome_element
      @welcome_element = WelcomeElement.first
    end

    def welcome_element_params
      params.require(:welcome_element).permit(:image, :title, :description, :show_image,
                                              :show_title, :show_description, :show_livestream,
                                              :livestream_id)
    end

  end
end