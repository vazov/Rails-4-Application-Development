class Tenant
  def initialize user
    @user = user
  end
  
  private

  def admin?
    @user.has_role? "admin"
  end

  def owner?
	  @user.has_role? "owner"
  end

  def restaurants
    @user.admin? ? Restaurant.all : Restaurant.where('organization_id = ?', user.organizations.first.id).all
  end
end
