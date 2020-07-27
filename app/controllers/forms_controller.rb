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
      flash[:notice] = "Audition Form saved"
      redirect_to auditions_info_path
    end

    def edit
      if current_user.form.present?
        if params[:id].to_i == current_user.form.id
          @form = Form.find(params[:id])
        else
          flash[:error] = "You can only edit your own Audition Form"
          @form = Form.find(current_user.form.id)
        end
      else
        flash[:error] = "You have not submitted an Audition Form yet"
        redirect_to auditions_info_path
      end
    end

    def update
      @form = Form.find(params[:id])

      if @form.update(form_params)
        flash[:notice] = "Audition Form updated and saved"
        redirect_to auditions_info_path
      else
        flash[:error] = "Could not update and save Audition Form"
        redirect_to auditions_info_path
      end
    end

    def show
      if params[:id].to_i == current_user.form.id
        @form = Form.find(params[:id])
      else
        flash[:error] = "You can only view your own Audition Form"
        @form = Form.find(current_user.form.id)
      end
    end

    private

    def form_params
      params.require(:form).permit(:name, :pronouns, :phone, :major, :graduation,
                                   :absent_semesters, :experience, :skills,
                                   :availability, :heard_from)
    end

end
