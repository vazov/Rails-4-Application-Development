class SetupOrganizationController < ApplicationController
  include Wicked::Wizard
  steps :organization_setup
  def show
    @user = current_user
    case step
     when :organization_setup
       @organization = Organization.new
    end
    render_wizard
  end


  def update
    @user = current_user
    @organization = Organization.new(organization_params)
    @organization.users << @user
    render_wizard @organization
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def organization_params
    params.require(:organization).permit(:name, :description, :plan_id, {:user_ids => []})
  end

  def redirect_to_finish_wizard(options = nil)
    redirect_to dashboard_path, notice: "Thank you for signing up. You can now build beautiful menus"
  end
end
