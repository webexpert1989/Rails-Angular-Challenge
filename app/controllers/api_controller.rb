class ApiController < ApplicationController
  include Pundit

  before_filter :authenticate_user!
  respond_to :json

  # Globally rescue Authorization Errors in controller.
  # Returning 403 Forbidden if permission is denied
  rescue_from Pundit::NotAuthorizedError, with: :permission_denied

  private
    def permission_denied(exception)
      Rails.logger.info exception.inspect
      policy_name = exception.policy.class.to_s.underscore

      render json: {error: I18n.t("#{policy_name}.#{exception.query}", scope: 'pundit', default: :default)}, status: :forbidden
    end

    def render_success extra={}
      render json: extra
    end

    def render_error entity=nil
      if entity.nil?
        render json: {}, status: :unprocessable_entity
      else
        render json: entity.errors.messages, status: :unprocessable_entity
      end
    end

    # Set root to false as this helps standardize things for the front-end.
    # No need to repeat in each controller call.
    def default_serializer_options
      {
        root: false
      }
    end
end