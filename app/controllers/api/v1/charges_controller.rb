class Api::V1::ChargesController < ApiController
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    @charges = policy_scope(Charge)
    render json: @charges and return
    render json: Pundit::NotAuthorizedError
    puts "----------------------------------"
    puts Pundit::NotAuthorizedError
    puts "----------------------------------"
  end

  def show
    @charge = Charge.find(params[:id])
    render json: @charge
  end
end