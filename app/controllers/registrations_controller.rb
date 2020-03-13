# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email,
                                 :password,
                                 :first_name,
                                 :last_name,
                                 :role)
  end

  def account_update_params
    params.require(:user).permit(:email,
                                 :password,
                                 :first_name,
                                 :last_name
    )
  end
end
