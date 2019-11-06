require './lib/bookmark.rb'

describe Bookmark do

  subject(:a_bookmark) {described_class.new}
  it 'can create an instance of the Bookmark class' do
      expect(a_bookmark).to be_an_instance_of Bookmark
  end
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  
      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
  
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
end