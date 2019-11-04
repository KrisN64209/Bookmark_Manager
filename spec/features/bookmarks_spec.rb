require './app.rb'

feature 'Creating a Bookmark' do
  scenario 'Visiting index page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'Checking bookmark stored' do
    visit '/'
    fill_in :bookmark, with: 'www.bgl.com'
    click_button 'Save'
    expect(page).to have_content 'www.bgl.com'
  end
end