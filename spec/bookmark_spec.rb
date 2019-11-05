require './lib/bookmark.rb'

describe Bookmark do

  subject(:a_bookmark) {described_class.new}
  it 'can create an instance of the Bookmark class' do
      expect(a_bookmark).to be_an_instance_of Bookmark
  end
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end