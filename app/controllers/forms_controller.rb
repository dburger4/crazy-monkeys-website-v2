class FormsController < ApplicationController
    before_action :authenticate_user!
    before_action :validate_form_id, only: [:edit, :show, :destroy]
    before_action :retrieve_active_auditions, only: [:new, :edit]
    before_action :admin_only, only: [:index]

    def new
      @form = Form.new
      @form.email = current_user.email
    end

    def create
      @form = Form.new(form_params)
      @form.user = current_user
      if @form.save
        flash[:notice] = "Audition Form saved, you are now registered for The Crazy Monkeys Auditions! View or edit by clicking your email dropdown above"
      else
        flash[:error] = "Audition Form could not be saved"
      end
      redirect_to auditions_info_path
    end

    def edit
      
    end

    def update
      @form = Form.find(params[:id])

      if @form.update(form_params)
        flash[:notice] = "Audition Form updated and saved"
      else
        flash[:error] = "Could not update and save Audition Form"
      end
      redirect_to auditions_info_path
    end

    def show
      
    end

    def destroy
      @form.destroy
      flash[:notice] = "Audition form and registration removed"
      redirect_to auditions_info_path
    end

    private

    def validate_form_id
      if params[:id].to_i == current_user.form&.id
        @form = Form.find(params[:id])
      else
        flash[:error] = "You can not perform that action"
        redirect_to auditions_info_path
      end
    end

    def form_params
      params.require(:form).permit(:audition_id, :name, :pronouns, :phone, :major, :graduation,
                                   :absent_semesters, :experience, :skills,
                                   :availability, :heard_from)
    end

    def retrieve_active_auditions
      @auditions = Audition.active
    end

    def admin_only
      if !current_user&.admin?
        flash[:error] = "You do not have permission to visit this page"
        redirect_to root_path
      end
    end

end
