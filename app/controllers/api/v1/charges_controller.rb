class Api::V1::ChargesController < ApiController
  def index
    @charges = Charge.all
    render json: @charges
  end

  def show
    @charge = Charge.find(params[:id])
    render json: @charge
  end
end
