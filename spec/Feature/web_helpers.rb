def sign_in_and_play
  visit('/')
  fill_in :playername1, with: 'John'
  fill_in :playername2, with: 'Rob'
  click_button 'Submit'
end
