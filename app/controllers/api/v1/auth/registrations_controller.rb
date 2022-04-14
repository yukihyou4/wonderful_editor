class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

    def sign_up_params
      params.permit(:name, :email, :password)
    end

    # ついでに追加
    def account_update_params
      params.permit(:name, :email)
    end
end
