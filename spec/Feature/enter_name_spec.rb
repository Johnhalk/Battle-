require 'spec_helper.rb'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Rob'
  end
end

feature 'View hit points' do
  scenario 'seeing player 2s hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Rob has 200 Hit Points'
  end
end
