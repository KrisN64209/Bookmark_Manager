feature 'Creating a Bookmark' do
  scenario 'Visiting index page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
  
  scenario 'Checking bookmarks are on /bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
  end
end