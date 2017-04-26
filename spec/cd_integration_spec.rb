require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the cd album path', {:type => :feature}) do
  it('visits the input form and inputs the titles') do

    visit('/cd_form') do
      fill_in('new_title', :with => 'John')
      fill_in('new_artist', :with => 'Doe')
    end
    click_button('Add Album!')
    expect(page).to have_content('My CD Home-Base')
  end

end
