class FormsController < ApplicationController
    before_action :authenticate_user!

    def new
      @form = Form.new
    end

    def create
      @form = Form.new(form_params)
      @form.user = current_user
      @form.email = current_user.email
      @form.save
      redirect_to root_path
    end

    private

    def form_params
      params.require(:form).permit(:name, :pronouns, :phone, :major, :graduation,
                                   :absent_semesters, :experience, :skills,
                                   :availability, :heard_from)
    end

end
