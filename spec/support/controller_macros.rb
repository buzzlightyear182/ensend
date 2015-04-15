module ControllerMacros

  def login_admin
    @request.env["devise.mapping"] = Devise.mappings[:user]
    admin = FactoryGirl.create(:admin)
    sign_in :user, admin
  end

  # def logout_admin
  #   @request.env["devise.mapping"] = Devise.mappings[:user]
  #   sign_out @admin
  # end
end
