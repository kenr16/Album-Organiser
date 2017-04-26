require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the cd album path', {:type => :feature}) do
  it('processes user entries to add albums and view them') do
    visit('/')
    fill_in('input_one', :with => 'leep')
    fill_in('input_two', :with => 'pele')

    click_button('Anagrize!')
    expect(page).to have_content('anagrams')
  end


end
