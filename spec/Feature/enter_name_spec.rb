require 'spec_helper.rb'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :playername1, with: 'John'
    fill_in :playername2, with: 'Rob'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Rob'
  end
end
