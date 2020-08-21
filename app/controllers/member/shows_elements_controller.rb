module Member
  class ShowsElementsController < BaseController
    before_action :get_shows_element, only: [:edit, :update]

    def edit
      
    end

    def update
      if @shows_element.update(shows_element_params)
        flash[:notice] = "Updated Shows Page Element"
      else
        flash[:error] = "Could not update Shows Page Element"
      end
      redirect_to member_dashboard_path
    end

    private

    def get_shows_element
      @shows_element = ShowsElement.first
    end

    def shows_element_params
      params.require(:shows_element).permit(:image, :title, :description, :show_image,
                                              :show_title, :show_description)
    end

  end
end