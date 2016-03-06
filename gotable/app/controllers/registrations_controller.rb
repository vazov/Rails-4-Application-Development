class RegistrationsController < Devise::RegistrationsController
	  def after_sign_up_path_for(resource)
       session[:plan_id] = params[:plan_id]
       setup_organization_path(:organization_setup)
    end
    
    # def update_sanitized_params
    #   devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :organization_name, :email, :password, :password_confirmation,
    #   	:plan_id, :active, :first_name, :last_name)}
    # end
    
    private
      # def update_sanitized_params
      # 	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :organization_name, 
      # 		:email, :password, :password_confirmation,:plan_id)}
      # end

      def sign_up_params
        params.require(:user).permit(:name, :organization_name, :email, :password, :password_confirmation,
        :plan_id, :active, :first_name, :last_name)
      end

      def account_update_params
        params.require(:user).permit(:name, :organization_name, :email, :password, :password_confirmation,
        :plan_id, :active, :first_name, :last_name, :current_password)
      end
end
