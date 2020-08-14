module Member
  class UsersController < BaseController

    def index
      @users = User.all
    end

    def toggle_admin
      user = User.find(params[:id])
      user.admin? ? user.admin = false : user.admin = true

      if user.save
        flash[:notice] = "#{user.email}'s admin status was changed"
      end
      redirect_to member_users_path
      
    end

    def destroy
      user = User.find(params[:id])
      email = user.email
      if user.destroy
        flash[:notice] = "#{email}'s account was deleted"
      else
        flash[:notice] = "#{email}'s account could not be deleted"
      end
      redirect_to member_users_path
    end

  end
end