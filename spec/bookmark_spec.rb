require './lib/bookmark.rb'

describe Bookmark do

  it 'can create an instance of the Bookmark class' do
    a_bookmark = Bookmark.new("www.bgl.com")
    expect(a_bookmark).to be_an_instance_of Bookmark
  end
end
