require 'rest-client'
require 'json'
 
class BtcExchangeService
  def initialize(source_currency, target_currency, amount)
    @source_currency = source_currency
    @target_currency = target_currency
    @amount = amount.to_f
  end

  def perform
    begin
      criptoexchange_api_url = Rails.application.credentials[Rails.env.to_sym][:criptocurrency_api_url]
      res = RestClient.get "#{criptoexchange_api_url}from=#{@source_currency}&to=#{@target_currency}&amount=#{@amount}"
      value = JSON.parse(res.body)['price'].to_f
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end