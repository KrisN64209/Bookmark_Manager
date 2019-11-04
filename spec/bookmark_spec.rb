require './lib/bookmark.rb'

describe Bookmark do

  subject(:a_bookmark) {described_class.new("www.bgl.com")}
  
  it 'can create an instance of the Bookmark class' do
    expect(a_bookmark).to be_an_instance_of Bookmark
  end
end
