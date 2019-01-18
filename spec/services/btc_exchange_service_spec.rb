require 'spec_helper'
require 'json'
require './app/services/btc_exchange_service'

describe 'Criptocurrency' do
  it 'exchange' do
    amount = rand(0..9999)
    res = BtcExchangeService.new("BTC", "USD", amount).perform
    expect(res.is_a? Numeric).to eql(true)
    expect(res != 0 || amount == 0).to eql(true)
  end
end
