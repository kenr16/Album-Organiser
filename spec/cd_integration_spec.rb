require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the cd album path', {:type => :feature}) do
  it('visits the input form and inputs the titles') do
    visit('/cd_form')
    fill_in('new_title', :with => 'John')
    fill_in('new_artist', :with => 'Doe')
    click_button('Add Album')
    # expect(page).to have_content('My CD Home-Base')
  end


  # it('processes user entries to add albums and view them') do
  #   visit('/title_list')
  #   # fill_in('input_one', :with => 'leep')
  #   # fill_in('input_two', :with => 'pele')
  #
  #   click_button('Anagrize!')
  #   expect(page).to have_content('anagrams')
  # end


end
