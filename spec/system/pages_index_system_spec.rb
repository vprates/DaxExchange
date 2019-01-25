require 'rails_helper'
 
RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "exchange value" do
    visit '/'
    within("#exchange_form") do
      select('EURO', from: 'source_currency')
      select('DOLAR DOS EUA', from: 'target_currency')
      fill_in 'amount', with: '10'
    end
    
    sleep 400
 
    # save_and_open_page
    expect(page).to have_content("value")
  end
end
 