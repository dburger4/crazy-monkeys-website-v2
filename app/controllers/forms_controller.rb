class FormsController < ApplicationController
    before_action :authenticate_user!

    def new
      @form = Form.new
    end

    def create
      @form = Form.new(form_params)
    end

    private

    def form_params
      params.require(:form).permit(:name, :pronouns, :phone, :major, :graduation,
                                   :absent_semesters, :experience, :skills,
                                   :conflicts, :heard_from)
    end

end
