require './app.rb'

feature 'Creating a Bookmark' do
  scenario 'Visiting index page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end