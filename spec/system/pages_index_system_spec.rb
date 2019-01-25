require 'rails_helper'
 
RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "exchange value" do
    visit '/'
    within("#card-block") do
      select('EURO', from: 'source_currency')
      select('DOLAR DOS EUA', from: 'target_currency')
      fill_in 'amount', with: '10'
    end

    # save_and_open_page
    expect(page).to have_content("Simule")
  end
end
 