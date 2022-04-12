class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

    def sign_up_params
      params.permit(:name, :email, :password)
    end

		def account_update_params #ついでに追加
      params.permit(:name, :email)
    end

end
