require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The word count path', {:type => :feature}) do
  it('Processes the determines the instances of a target word in a string') do
    visit('/')
    fill_in('target', :with => 'dog')
    fill_in('phrase', :with => 'I love my dog')
    click_button('Count')
    expect(page).to have_content('1')
  end
end
