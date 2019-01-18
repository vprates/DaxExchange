class ExchangesController < ApplicationController
  def index
  end

  def convert
    if params[:source_currency] == 'BTC' || params[:target_currency] == 'BTC'
      value = BtcExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    else
      value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    end
    render json: {"value": value}
  end
end
