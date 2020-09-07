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

      if params[:form][:photo].present? && current_user.admin?
        if @form.update(form_params)
          flash[:notice] = "Photo added"
        else
          flash[:error] = "Photo could not be added"
        end
        redirect_to member_form_path(@form.id) and return
      end

      if params[:form][:notes].present? && current_user.admin?
        if @form.update(form_params)
          flash[:notice] = "Audition form updated"
        else
          flash[:error] = "Audition form could not be updated"
        end
        redirect_to member_form_path(@form.id) and return
      end

      if params[:form][:decision].present? && current_user.admin?
        if @form.update(form_params)
          flash[:notice] = "Decision updated"
        else
          flash[:error] = "Decision could not be updated"
        end
        redirect_to member_forms_path and return
      end

      

      if @form.update(form_params)
        flash[:notice] = "Audition Form updated and saved"
      else
        flash[:error] = "Could not update and save Audition Form"
      end
      redirect_to auditions_info_path and return
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
      if params[:id].to_i == current_user.form&.id || current_user.admin?
        @form = Form.find(params[:id])
      else
        flash[:error] = "You can not perform that action"
        redirect_to auditions_info_path
      end
    end

    def form_params
      params.require(:form).permit(:audition_id, :name, :pronouns, :phone, :major, :graduation,
                                   :absent_semesters, :experience, :skills,
                                   :availability, :heard_from, :photo, :email, :notes, :decision)
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
