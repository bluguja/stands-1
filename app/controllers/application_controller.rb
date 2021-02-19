class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :valid_user

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :type])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :type])
    end

    def after_sign_in_path_for(user)
        if user.student?
            schedules_path
        elsif user.teacher?
            students_path
        else
            edit_user_registration_path
        end
    end

    def valid_user
        if current_user && current_user.undefined?
            redirect_to edit_user_registration_path && return
        end
    end
end
