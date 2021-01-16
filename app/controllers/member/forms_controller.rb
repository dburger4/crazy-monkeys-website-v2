module Member
  class FormsController < BaseController

    def index
      @forms = Form.all
      @users = User.all
      @auditions = Audition.active
    end

    def show
      @form = Form.find(params[:id])
      if !@form
        flash[:error] = "Could not find form"
        redirect_to member_forms_path
      end
    end

    def destroy
      form = Form.find(params[:id])
      name = form.name
      form.destroy
      flash[:notice] = "#{name}'s Audition form and registration has been deleted"
      redirect_to member_forms_path
    end

    private

    def form_params
      params.require(:form).permit(:photo, :notes, :decision)
    end

  end
end